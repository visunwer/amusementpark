// @strict-types


#Область ОбработчикиСобытийФормы

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	УправлениеВидимостьюЭлементовФормы();
КонецПроцедуры

#КонецОбласти

//@skip-check module-structure-top-region
#Область ОбработчикиСобытийЭлементовШапкиФормы

&НаКлиенте
Процедура ВидНоменклатурыПриИзменении(Элемент)
	УправлениеВидимостьюЭлементовФормы();
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаСервере
Процедура УправлениеВидимостьюЭлементовФормы()
	
	ЭтоПосещениеАттракциона = (Объект.ВидНоменклатуры = Перечисления.ВидНоменклатуры.ПосещениеАттракциона);
	
	Элементы.ВидАттракциона.Видимость = ЭтоПосещениеАттракциона;
	Элементы.КоличествоПосещений.Видимость = ЭтоПосещениеАттракциона;
	
КонецПроцедуры

#КонецОбласти
