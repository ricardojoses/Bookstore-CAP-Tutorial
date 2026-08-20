sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"booksstorelistview/test/integration/pages/BooksList.gen",
	"booksstorelistview/test/integration/pages/BooksObjectPage.gen"
], function (JourneyRunner, BooksListGenerated, BooksObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('booksstorelistview') + '/test/flpSandbox.html#booksstorelistview-tile',
        pages: {
			onTheBooksListGenerated: BooksListGenerated,
			onTheBooksObjectPageGenerated: BooksObjectPageGenerated
        },
        async: true
    });

    return runner;
});

