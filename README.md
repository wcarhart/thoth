<p align="center"><img alt="thoth logo" src="logo.png" /></p>

<h1 align="center">thoth</h1>
<p align="center">Helpful English diction tools for the command line</p>

## Quick examples
Look up definitions for more than 150,000 English words:
```
$ thoth define resolute
resolute

(adj) characterized by quickness and firmness

(adj) firm in purpose or belief
```

Find synonyms for words:
```
$ thoth synonym hello
hello

Synonyms: hullo, hi, howdy, how-do-you-do
```

Install verbose dictionaries and for even more functionality:
```
$ thoth install ~/a_huge_dictionary/dict/
$ thoth lookup gripe
gripe

(v) complain
Synonyms: bellyache, bitch, crab, grouse, squawk, holler, beef
Type of: plain, complain, kick, sound off, quetch, kvetch

(n) informal terms for objecting
Examples:
  - “I have a gripe about the service here”
Synonyms: squawk, bitch, beef, kick
Type of: objection
```

## Installation
Install via Homebrew:
```
brew tap wcarhart/tools
brew install thoth
```

## Usage
`thoth` currently supports the following commands:
 * `add` - add a word to the dictionary
 * `antonym` - find synonyms for a word
 * `define` - find definitions for a word
 * `example` - find examples of a word
 * `help` - print the help menu
 * `info` - print information about `thoth`
 * `install` - install a new dictionary
 * `list` - list available commands
 * `lookup` - find all available information for a word
 * `reset` - reset the default dictionary
 * `shell` - open a shell to interpret `thoth` commands
 * `synonym` - find synonyms for a word
 * `type` - find types for a word
 * `typeof` - find what categories a word is a type of
 * `version` - print the version

<details>
<summary><a id="add"><code>add</code></a></summary>

### add
```
>> thoth add
Add a new word to the dictionary.
```
Don't see an entry for your favorite word? Use `thoth add` to add the word to the dictionary. `thoth` will walk you through its interactive prompt to add the new word:
```
$ thoth add
What word would you like to add? mycoolword
How many definitions does 'mycoolword' have? 1
What is the type of speech for definition #1 of 'mycoolword'? n
What is the definition for defition #1 of 'mycoolword'? the coolest word ever
Does definition #1 of 'mycoolword' have any examples? (y/n) y
What are the examples for definition #1 of 'mycoolword'? (enter examples separated by a comma): here's an example of mycoolword
Does definition #1 of 'mycoolword' have any synonyms? (y/n) n
Does definition #1 of 'mycoolword' have any antonyms? (y/n) y
What are the antonyms for definition #1 of 'mycoolword'? (enter antonyms separated by a comma): notcoolword, anothernotcoolword
Does definition #1 of 'mycoolword' have any types? (y/n) n
Does definition #1 of 'mycoolword' have any type of? (y/n) n
Added 'mycoolword' to the dictionary
```
Then, you can lookup the word like any other word in the dictionary:
```
$ thoth lookup mycoolword
mycoolword

(n) the coolest word ever
Examples:
  - "here's an example of mycoolword"
Antonyms: notcoolword, anothernotcoolword
```
</details>

<details>
<summary><a id="antonym"><code>antonym</code></a></summary>

### antonym
```
>> thoth antonym WORD
Find antonyms for word WORD.
```
Find antonyms for a given word. *There are not any records in the default dictionary with antonym entries.*
```
$ thoth antonym gain
gain

Antonyms: lose

Antonyms: recede, drop off, lose, fall behind, fall back

Antonyms: lose weight, slim down, thin, melt off, slenderize, slim, reduce

Antonyms: red ink, loss, red
```
</details>

<details>
<summary><a id="define"><code>define</code></a></summary>

### define
```
>> thoth define WORD
Define the word WORD.
```
Define a given word.
```
$ thoth define behemoth
behemoth

(n) someone or something that is abnormally large and powerful

(n) a person of exceptional importance and reputation
```
</details>

<details>
<summary><a id="example"><code>example</code></a></summary>

### example
```
>> thoth example WORD
Find examples for word WORD.
```
Find examples for a given word. *There are not any records in the default dictionary with example entries.*
```
$ thoth example macaroni
macaroni

Examples:
  - “Yankee Doodle stuck a feather in his cap and called it macaroni”
```
</details>

<details>
<summary><a id="help"><code>help</code></a></summary>

### help
```
>> thoth help
Show this menu and exit.
```
Show the help menu.
```
$ thoth help
Helpful English diction tools for the command line

Usage:
  thoth COMMAND

Available commands:
  add
  antonym
  define
  example
  help
  info
  install
  list
  lookup
  reset
  shell
  synonym
  type
  typeof
  version

>> thoth add
Add a new word to the dictionary.

>> thoth antonym WORD
Find antonyms for word WORD.

>> thoth define WORD
Define the word WORD.

>> thoth example WORD
Find examples for word WORD.

>> thoth help
Show this menu and exit.

>> thoth info
Print info about thoth.

>> thoth install DICT
Install a new dictionary DICT to use in place of thoth's default dictionary (the DICT argument 
needs to be a valid path to a dictionary, where a dictionary is a directory of word records). To 
understand the dictionary format, use `thoth install --example`. The currently installed dictionary 
can be viewed with `thoth info`. If an invalid dictionary has been installed, thoth's default 
dictionary can be reset with `thoth reset`.

>> thoth list
List all available commands.

>> thoth lookup WORD
Get all information for word WORD.

>> thoth reset
Reset thoth's dictionary to the default dictionary.

>> thoth shell
Open a new thoth shell to interpret thoth commands.

>> thoth synonym WORD
Find synonyms for word WORD.

>> thoth type WORD
Find types for word WORD.

>> thoth typeof WORD
Find types of for word WORD.

>> thoth version
Print thoth version.
```
</details>

<details>
<summary><a id="info"><code>info</code></a></summary>

### info
```
>> thoth info
Print info about thoth.
```
Print information about `thoth`. This includes a description, version, and location of the installed dictionary.
```
$ thoth info
Name:        thoth
Description: Helpful English diction tools for the command line
Author:      Will Carhart
Version:     v0.0.0

utility:     /Users/me/thoth/thoth
dictionary:  /Users/me/thoth/dict
```
</details>

<details>
<summary><a id="install"><code>install</code></a></summary>

### install
```
>> thoth install DICT
Install a new dictionary DICT to use in place of thoth's default dictionary (the DICT argument 
needs to be a valid path to a dictionary, where a dictionary is a directory of word records). To 
understand the dictionary format, use `thoth install --example`. The currently installed dictionary 
can be viewed with `thoth info`. If an invalid dictionary has been installed, thoth's default 
dictionary can be reset with `thoth reset`.
```
Install a new dictionary in place of the default dictionary. Dictionaries have a specific format, which can be better understood with the `--example` option:
```
$ thoth install --example
To install a new dictionary, supply a path to a directory with the following structure (with 
subdirectories for all 26 letters):
.
├── a
│   └── words.txt
├── b
│   └── words.txt
...
├── y
│   └── words.txt
└── z
    └── words.txt

Where each 'words.txt' file contains all of the words that begin with the letter of its parent 
directory, using the following format:
>>> word

(part of speech) definition
Examples:
  - "example containing word"
  - "example containing word"
Synonyms: synonym, synonym
Antonyms: antonym, antonym
Types: type, type
Type of: typeof, typeof

Words can have multiple definitions, separated by a newline. At least one definition and part of 
speech is required for each word, while 'examples', 'synonyms', 'antonyms', 'types', and 'type of' 
are all optional for each defition. The words in each 'words.txt' file do not need to be in 
alphabetical order.

For example, here a potential word record for the word 'cat', which would be found in the 
dictionary at 'c/words.txt':
>>> cat

(n) feline mammal usually having thick soft fur and no ability to roar
Examples:
  - "the dog chased the cat"
Synonyms: wild cat
Antonyms: dog
Types: panther, mountain lion, puma, lynx, jaguar, ocelot
Type of: feline

(n) a large tracked vehicle that is propelled by two endless metal belts; frequently used for 
moving earth in construction and farm work
Synonyms: Caterpillar

To see more examples, review the default dictionary, found in: /Users/wcarhart/thoth/dict
```
</details>

<details>
<summary><a id="list"><code>list</code></a></summary>

### list
```
>> thoth list
List all available commands.
```
List the available `thoth` commands.
```
$ thoth list
add
antonym
define
example
help
info
install
list
lookup
reset
shell
synonym
type
typeof
version
```
</details>

<details>
<summary><a id="lookup"><code>lookup</code></a></summary>

### lookup
```
>> thoth lookup WORD
Get all information for word WORD.
```
Get all of the available information for a given word. `lookup` outputs the combination of information from `define`, `example`, `synonym`, `antonym`, `type`, and `typeof`. *There are not any records in the default dictionary with example, antonym, type, and typeof entries.*
```
$ thoth lookup pace
>>> pace

(n) the relative speed of progress or change
Examples:
  - “he lived at a fast pace”
  - “the pace of events accelerated”
Synonyms: rate
Types: promptness, quickness, graduality, promptitude, instancy, dispatch, hastiness, rapidity, fleetness, execution speed, speediness, fastness, beat, gradualness, celerity, immediateness, precipitation, sluggishness, haste, hurriedness, expeditiousness, unhurriedness, slowness, deliberation, immediacy, instantaneousness, deliberateness, rapidness, expedition, procrastination, despatch, leisureliness, dilatoriness, hurry, speed, swiftness
Type of: temporal property
```
</details>

<details>
<summary><a id="reset"><code>reset</code></a></summary>

### reset
```
>> thoth reset
Reset thoth's dictionary to the default dictionary.
```
Reset the installed dictionary to the `thoth` default. This can be helpful if an incorrect or out-of-date dictionary has been installed.
</details>

<details>
<summary><a id="shell"><code>shell</code></a></summary>

### shell
```
>> thoth shell
Open a new thoth shell to interpret thoth commands.
```
Open a shell to interpret `thoth` commands. When using a shell, you don't need to type `thoth` before every command.
```
$ thoth shell
>> define virtuoso
virtuoso

(n) someone who is dazzlingly skilled in any field

(n) a musician who is a consummate master of technique and artistry

(adj) having or revealing supreme mastery or skill
>> shell
thoth shell is already running
>> info
Name:        thoth
Description: Helpful English diction tools for the command line
Author:      Will Carhart
Version:     v0.0.0

utility:     /Users/me/thoth/thoth
dictionary:  /Users/me/thoth/dict
>> exit
```
</details>

<details>
<summary><a id="synonym"><code>synonym</code></a></summary>

### synonym
```
>> thoth synonym WORD
Find synonyms for word WORD.
```
Find synonyms for a given word. *There are not any records in the default dictionary with synonym entries.*
```
$ thoth synonym zany
zany

Synonyms: wacky, sappy, cockamamy, foolish, whacky, silly, cockamamie, goofy

Synonyms: humourous, clownlike, clownish, buffoonish, humorous

Synonyms: fathead, goof, cuckoo, goose, goofball, jackass, bozo
```
</details>

<details>
<summary><a id="type"><code>type</code></a></summary>

### type
```
>> thoth type WORD
Find types for word WORD.
```
Find types for a given word. *There are not any records in the default dictionary with type entries.*
```
$ thoth type waffle
waffle

Types: Belgian waffle

Types: vibrate, hover, vacillate, boggle, falter, waver, linger, linger over, shillyshally, dwell on, oscillate
```
</details>

<details>
<summary><a id="typeof"><code>typeof</code></a></summary>

### typeof
```
>> thoth typeof WORD
Find types of for word WORD.
```
Find types of for a given word. *There are not any records in the default dictionary with typeof entries.*
```
$ thoth typeof cabinetwork
cabinetwork

Type of: carpentry, woodworking, woodwork

Type of: woodwork
```
</details>

<details>
<summary><a id="version"><code>version</code></a></summary>

### version
```
>> thoth version
Print thoth version.
```
Print the current version
```
$thoth version
1
```
</details>

## Caveats
**Why doesn't the default dictionary contain any records with example, antonym, type, or typeof entries?**

The default dictionary shipped with `thoth` comes from [WordNet](https://wordnet.princeton.edu) because it is open source. Unfortunately, the WordNet dictionary does not come with anything other than definitions and synonyms. However, `thoth` comes with functionality to install other dictionaries, even closed source ones, which can have things other than definitions and synonyms. Other dictionaries can be built from hand or via web scraping.

There may be other dictionaries in the future, but for now the default dictionary is fairly limited, unfortunately. 

## Nomenclature
You may ask, why the name `thoth`? `thoth` is the [Egyptian god of writing, magic, wisdom](https://en.wikipedia.org/wiki/Thoth). He is often depicted as a man with the head of an ibis or a baboon, animals sacred to himm, and is said to maintain the universe. 
