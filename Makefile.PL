use ExtUtils::MakeMaker;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

WriteMakefile
(
	($] ge '5.005') ?
	(
		'AUTHOR' => 'Ron Savage (ron@savage.net.au)',
		'ABSTRACT' => 'Convert sql into a JavaScript database',
    ) : (),
	clean				=>
	{
		FILES			=> 'blib/* Makefile MANIFEST DBIx-HTML-ClientDB-*'
	},
	dist				=>
	{
		COMPRESS		=> 'gzip',
		SUFFIX			=> 'gz'
	},
	DISTNAME			=> 'DBIx-HTML-ClientDB',
	NAME				=> 'DBIx::HTML::ClientDB',
	VERSION_FROM		=> 'ClientDB.pm',
);
