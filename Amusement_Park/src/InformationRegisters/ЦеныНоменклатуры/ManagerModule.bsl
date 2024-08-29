// @strict-types

#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

#Область СлужебныеПроцедурыИФункции

// Цена номенклатуры.
// 
// Параметры:
//  Номенклатура - СправочникСсылка.Номенклатура
//  Дата - Неопределено - Дата
// 
// Возвращаемое значение:
//  Число - Цена номенклатуры
Функция ЦенаНоменклатуры(Номенклатура, Дата = Неопределено) Экспорт

	Запрос = Новый Запрос;
	Запрос.Текст =
	"ВЫБРАТЬ
	|	ЦеныНоменклатурыСрезПоследних.Цена
	|ИЗ
	|	РегистрСведений.ЦеныНоменклатуры.СрезПоследних(&Период, Номенклатура = &Номенклатура) КАК
	|		ЦеныНоменклатурыСрезПоследних";

	Запрос.УстановитьПараметр("Период", Дата);
	Запрос.УстановитьПараметр("Номенклатура", Номенклатура);

	Выборка = Запрос.Выполнить().Выбрать();

	Если Выборка.Следующий() Тогда
		Возврат Выборка.Цена;
	КонецЕсли;

	Возврат 0;

КонецФункции

#КонецОбласти

#КонецЕсли