## Regex syntax ##

Regex are used for pattern matching and text manipulation. 
They're used to search, match, and manipulate strings based on specific patterns. 

.: Matches any single character except a newline.
*: Matches 0 or more occurrences of the preceding character or group.
+: Matches 1 or more occurrences of the preceding character or group.
?: Matches 0 or 1 occurrence of the preceding character or group.
[]: Defines a character set. [abc] matches "a", "b", or "c".
[^]: Defines a negated character set. [^abc] matches any character except "a", "b", or "c".
\: Escapes a special character. For example, \. matches a literal dot.
^: Matches the start of a line or string.
$: Matches the end of a line or string.
() or []: Creates a capturing group or character set.
{n}: Matches exactly n occurrences of the preceding character or group.
{n,}: Matches n or more occurrences of the preceding character or group.
{n,m}: Matches between n and m occurrences of the preceding character or group.
\w: Matches a word character (alphanumeric character or underscore).
\d: Matches a digit.
\s: Matches whitespace characters (spaces, tabs, newlines).
\b: Matches a word boundary.


**Basic Characters and Literals:**
- Ordinary characters like letters, digits, and symbols in a regex match themselves in the input string.
  - For example, the regex a will match the character "a" in the input.
    
**Special Characters:**
 - Special characters have special meanings in regex and need to be escaped with a backslash \ if you want to match them literally.
   - Examples: \., \+, \*, \(, \), etc.
        
**Character Classes:**
- Character classes allow you to match any character from a set of characters.
  - Examples: [aeiou] matches any vowel, [0-9] matches any digit, [^0-9] matches anything except a digit.
    
**Quantifiers:**
- Quantifiers specify how many times a character or group should appear.
  - Examples: * (0 or more), + (1 or more), ? (0 or 1), {n} (exactly n), {n,} (n or more), {n,m} (between n and m).
    
**Anchors:**
- Anchors match positions in the string, not characters.
  - Examples: ^ (start of line), $ (end of line), \b (word boundary), \B (not a word boundary).
    
**Groups and Capturing:**
- Parentheses () are used to create groups in regex.
  - Capturing groups allow you to extract portions of the matched text.
  - Example: (a|b) matches either "a" or "b".
    
**Modifiers:**
- Modifiers are used after the closing delimiter to specify flags like case-insensitivity, global matching, etc.
  - Example: /pattern/i (case-insensitive matching).
    
**Escape Sequences:**
- Backslash \ is used to escape special characters and introduce escape sequences.
  - Examples: \d (digit), \w (word character), \s (whitespace character), etc.
    
**Greedy and Non-Greedy Matching:**
- By default, regex is greedy, matching as much text as possible.
- Adding ? after a quantifier makes it non-greedy, matching as little text as possible.
