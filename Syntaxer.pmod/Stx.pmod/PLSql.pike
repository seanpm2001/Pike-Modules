//| Generated by stxparser
//|
//| Inherit main class. If you'r creating a tag based syntax file inherit
//| HTML in Markup.pmod instead.
inherit "../Parser.pike";

//! The name of the language
public string title = "PLSQL";

//! Is the language case sensitive or not?
//!
//! @appears case_sensitive
protected int(0..1) _case_sensitive = 0;

//! Is the language HTML embedded or not?
//!
//! @appears html_embedded
public int(0..1) _html_embedded = 0;

//! Escape char of the language. Like backslash for most C-like languages.
//!
//! @appears escape
protected string _escape = "";

//! Delimiters like (, ), ; and so on
//!
//! @appears delimiters
protected multiset(string) _delimiters = (< ",","(",")","{","}","[","]","-","+","*","%","/","=","'","\"","'","~","!","&","|","\\","<",">","?",":",";",".","@" >);

//! Array of chars defining strings
//!
//! @appears quotes
protected array(string) _quotes = ({ "'","''" });

//! What's a line comment. Like for PHP: ({ "//", "#" })
//!
//! @appears linecomment
protected array(string) _linecomments = ({ "--" });

//! The colors mapping defines how things should be colorized. Each index should
//! correspond to either the name of a base class variable containing some syntax
//! information - like "blockcomments" for instance - or an index in the
//! "keywords" mapping. The value should be a hexadecimal color definition.
//!
//! An example:
//!
//!   colors = ([
//!     "blockcomment"       : "#aaa",
//!     "linecomment"        : "#aaa",
//!     "delimiter"          : "#00c"
//!     "built-in-functions" : "#900"
//!   ]);
//!
//! There are a few generic indexes that are being used:
//!
//!   1. default:      For text that's not matching any rules
//!   2. delimiter:    For language delimiters.
//!   3. quote:        For strings
//!   4. numeric:      For numbers
//!   5. linecomment:  For line comments
//!   6. blockcomment: For block comments
//!   7. preprocessor: For preprocessor instructions (like <?php ?>)
//!   8. macro:        For macro directives like C's #define MACRO
//!
//! @appears colors
protected mapping(string:string) _colors = ([
  "default"      : "#000",
  "delimiter"    : "#00C",
  "quote"        : "#070",
  "numeric"      : "purple",
  "linecomment"  : "#818A9E",
  "blockcomment" : "#818A9E",
  "preprocessor" : "lime",
  "macro"        : "#99510a",

  //| NOTE!!! The ones below is auto generated. Check that they correspond to
  //| the indices in "_keywords". And you might want to change the colors!
  "keyword-5"                 : "#8a0e0e",
  "keyword-4"                 : "#049a04",
  "keyword-3"                 : "#0000aa",
  "keyword-2"                 : "#0d0dba",
  "keyword-1"                 : "#ca0f0f"
]);

//! Definitions for stuff that you want to add extra HTML around.
//! An example:
//!
//!   styles = ([
//!      "keywords"     : ({ "<b>", "</b>" }),
//!      "preprocessor" : ({ "<b style='background: black;'>", "</b>" }),
//!      "macro"        : ({ "<b>", "</b>" })
//!   ]);
//!
//! The indices works in the same way as for colors.
//!
//! @appears styles
protected mapping(string:array(string)) _styles = ([]);

//! Some languages like PHP, Perl, Ruby has some variable prefixes
//! like $, @, % so we can use them to highlight these variables
//! differently. The key should be an identifier to lookup in the
//! colors mapping and the value should be the actual prefix.
//! It could look like this for Perl:
//!
//!   prefixes = ([
//!     "prefix1" : "$",
//!     "prefix2" : "%",
//!     "prefix3" : "@"
//!   ])
//!
//! or if you want all prefixes to be colorized the same way
//!
//!   prefixes = ([
//!     "prefix" : ({ "$", "%", "@" })
//!   ]);
//!
//! @appears prefixes
protected mapping(string:string|array) _prefixes = ([ "prefix" : ({  }) ]);

//! Definition of blockcomments. This should be an array if arrays where the
//! second array should contain two values: The first the pattern that starts
//! a block comment and the second the pattern that ends it.
//! Example: ({ ({ "/*", "*/" }) })
//!
//! @appears blockcomments
protected array(array(string)) _blockcomments = ({ ({ "/*","*/" }) });

//! HTML embedded languages use preprocessor instructions to tell when
//! the actual program code starts and ends. Add them here...
//! PHP would look like this:
//! ({
//!   ({ "<?php", "?>" }),
//!   ({ "<?", "?>" })
//! })
//!
//! @appears preprocs
protected array(array(string)) _preprocs = ({  });

/*******************************************************************************
 *                                                                             *
 *    NOTE! Uncomment the following variables if the language supports         *
 *    preprocessing macros. Otherwise the default values will apply.           *
 *                                                                             *
 ******************************************************************************/

//! For languages that has preprocessing macros
// protected int(0..1) macro = 1;

//! Can the macro start off of the first char. C# allows for this
// protected int(0..1) macro_indent = 0;

//! Default macro character
// protected string macro_char = "#";

//! Language keywords
//!
//! @appears keywords
protected mapping(string:multiset(string)) _keywords = ([
  "keyword-5" : (<
    "access_into_null","collection_is_null","cursor_already_open",
    "dup_val_on_index","not_logged_on","no_data_found","invalid_cursor",
    "invalid_number","login_denied","others","program_error","storage_error",
    "subscript_beyond_count","subscript_outside_limit","timeout_on_resource",
    "too_many_rows","value_error","zero_divide","deleting","inserting",
    "raise_application_error","set_transaction_use","updating","rem",
    "remark" >),

  "keyword-4" : (<
    "abs","acos","add_months","ascii","asin","atan","atan2","avg",
    "bfilename","ceil","chartorowid","chr","concat","convert","cos","cosh",
    "count","decode","deref","dump","empty_blob","empty_clob","exp","floor",
    "greatest","hextoraw","initcap","instr","instrb","last_day","least",
    "length","lengthb","ln","log","lower","lpad","ltrim","make_ref","max",
    "min","mod","months_between","new_time","next_day",
    "nls_charset_decl_len","nls_charset_id","nls_charset_name","nls_initcap",
    "nls_lower","nls_sort","nls_upper","nvl","power","rawtohex","reftohex",
    "round","rowidtochar","rpad","rtrim","sign","sin","sinh","soundex",
    "sqrt","stddev","substr","substrb","sum","tan","tanh","to_char",
    "to_date","to_multi_byte","to_number","to_single_byte","translate",
    "trim","trunc","uid","upper","user","userenv","variance","vsize" >),

  "keyword-3" : (<
    "bfile","binary_integer","blob","boolean","char","clob","date",
    "float","hour","integer","interval","long","minute","month","nclob",
    "number","ocirowid","pls_integer","raw","real","rowid","second",
    "smallint","timestamp","urowid","varchar","varchar2","year","zone" >),

  "keyword-2" : (<
    ":=","%found","%isopen","%notfound","%rowcount","%rowtype","%type",
    "abort","accept","access","add","all","alter","and","any","array",
    "arraylen","as","asc","assert","assign","at","audit","authid",
    "authorization","base_table","begin","between","body","bulk","by","case",
    "char_base","check","close","cluster","clusters","colauth","collect",
    "column","columns","comment","commit","compress","connect","constant",
    "crash","create","current","currval","cursor","database","data_base",
    "day","dba","debugoff","debugon","decimal","declare","default",
    "definition","delay","delete","delta","desc","digits","dispose",
    "distinct","do","drop","elsif","else","end","entry","exception",
    "exception_init","exclusive","exists","exit","extends","false","fetch",
    "file","for","forall","form","from","function","generic","goto","grant",
    "group","having","heap","identified","if","immediate","in","increment",
    "index","indexes","indicator","initial","insert","interface","intersect",
    "into","is","isolation","java","level","like","limited","lock","loop",
    "maxextents","minus","mlslabel","mode","modify","natural","naturaln",
    "new","nextval","noaudit","nocompress","nocopy","not","notfound",
    "nowait","null","number_base","of","offline","old","on","online",
    "opaque","open","operator","option","or","order","out","package",
    "partition","pctfree","positive","positiven","pragma","prior","private",
    "privileges","procedure","raise","public","range","record","ref",
    "release","rename","replace","resource","restrict_references","return",
    "reverse","revoke","rollback","row","rowlabel","rownum","rows","rowtype",
    "run","savepoint","schema","separate","session","set","select","share",
    "size","space","sql","sqlbuf","sqlcode","sqlerrm","start","statement",
    "subtype","tabauth","tables","task","terminate","then","to","successful",
    "synonym","sysdate","table","true","trigger","type","union","unique",
    "update","use","validate","values","views","view","when","whenever",
    "where","while","with","work","write","xor" >),

  "keyword-1" : (<
    "admin","after","allocate","analyze","archive","archivelog",
    "autoallocate","autoextend","backup","become","before","bitmap","block",
    "buffer_pool","cache","cancel","cascade","chained","change","character",
    "checkpoint","chunk","class","coalesce","cobol","compile","compute",
    "constraint","constraints","contents","continue","controlfile","cycle",
    "datafile","debug","dec","deferrable","deferred","degree","dictionary",
    "directory","disable","dismount","double","each","enable","escape",
    "estimate","events","except","exceptions","exec","execute","expire",
    "explain","extent","external","externally","flush","force","foreign",
    "fortran","found","freelist","freelists","full","global","globally","go",
    "groups","hash","including","initially","initrans","instance",
    "instances","int","keep","key","kill","language","layer","less",
    "library","limit","link","lists","lob","local","logfile","logging",
    "manage","management","manual","materialized","maxdatafiles",
    "maxinstances","maxlogfiles","maxloghistory","maxlogmembers","maxsize",
    "maxtrans","maxvalue","member","minextents","minimum","minvalue",
    "module","monitoring","mount","nchar","never","next","noarchivelog",
    "nocache","nocycle","nologging","nomaxvalue","nominvalue","nomonitoring",
    "none","noorder","noparallel","noresetlogs","normal","nosort","numeric",
    "nvarchar2","object","off","only","optimal","organization","overflow",
    "own","parallel","password","pctincrease","pctthreshold","pctused",
    "pctversion","permanent","plan","pli","precision","preserve","primary",
    "profile","quota","read","rebuild","recover","recycle","references",
    "referencing","refresh","resetlogs","resize","restricted","reuse",
    "rewrite","role","roles","sample","scn","section","segment","sequence",
    "shared","snapshot","some","sort","sqlerror","sqlstate","statement_id",
    "statistics","stop","storage","store","subpartitions","switch","system",
    "tablespace","tempfile","temporary","than","thread","time","tracing",
    "transaction","triggers","truncate","under","uniform","unlimited",
    "until","unusable","user","using","varray" >)
]);

//! Constructor
//!
//! If you don't want to override one or more variables just comment them out
//! or remove them. If you wan't to add to the default variables just add a +
//! in front of =.
void create()
{
  linecomments   = _linecomments;
  delimiters     = _delimiters;
  blockcomments  = _blockcomments;
  prefixes       = _prefixes;
  colors         = _colors;
  styles         = _styles;
  preprocs       = _preprocs;
  html_embedded  = _html_embedded;
  case_sensitive = _case_sensitive;
  escape         = _escape;
  quotes         = _quotes;
  keywords       = _keywords;

  ::create();
}