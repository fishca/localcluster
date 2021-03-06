Перем Дерево;

Процедура ПриСозданииОбъекта(Знач ПутьКФайлуСоСпискомБаз) Экспорт

	ЧтениеФайла = Новый ЧтениеТекста(ПутьКФайлуСоСпискомБаз);
	Содержимое = ЧтениеФайла.Прочитать();
	Дерево = СкобкоПарсер.РазобратьДерево(Содержимое);

КонецПроцедуры

Функция ПолучитьИнформационныеБазы() Экспорт

	Базы = Новый Массив;
	КорневойЭлемент = Дерево[2];

	КоличествоБаз = КорневойЭлемент[0];
	Для Инд = 1 По КоличествоБаз Цикл

		Базы.Добавить(Новый ОписаниеБазыВКластере(КорневойЭлемент[Инд]));

	КонецЦикла;

	Возврат Базы;

КонецФункции

Функция НайтиБазу(Знач ИмяБазы) Экспорт

	КорневойЭлемент = Дерево[2];

	КоличествоБаз = КорневойЭлемент[0];
	Для Инд = 1 По КоличествоБаз Цикл

		База = Новый ОписаниеБазыВКластере(КорневойЭлемент[Инд]);
		Если нрег(База.Имя) = нрег(ИмяБазы) Тогда
			Возврат База;
		КонецЕсли;

	КонецЦикла;

	Возврат Неопределено;

КонецФункции
