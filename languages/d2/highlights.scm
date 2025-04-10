;-------------------------------------------------------------------------------

(container_key) @string.special
(shape_key) @variable
(attr_key) @property
(reserved) @error
(class_name) @constant

[
  (keyword_style)
  (keyword_classes)
  (keyword_class)
] @keyword

(keyword_underscore) @keyword.return

; Literals
;-------------------------------------------------------------------------------

(string) @string
(container_key (string (string_fragment) @string))
(shape_key (string (string_fragment) @string))
(escape_sequence) @string.escape
(label) @text.title
(attr_value) @string
(integer) @number
(float) @float
(boolean) @boolean

; Comments
;-------------------------------------------------------------------------------

[
  (language)
  (line_comment)
  (block_comment)
] @comment

; Punctuation
;-------------------------------------------------------------------------------

(arrow) @operator

[
  (dot)
  (colon)
  ";"
] @punctuation.delimiter

[
  "["
  "]"
  "{"
  "}"
  "|"
] @punctuation.bracket

; Special
;-------------------------------------------------------------------------------

(ERROR) @error

;-------------------------------------------------------------------------------
; Language-specific aliases for nvim-treesitter
;-------------------------------------------------------------------------------

(text_block . (raw_text) @markdown)

(text_block
  (language) @_language
  (raw_text) @markdown
  (#eq? @_language "md"))

(text_block
  (language) @_language
  (raw_text) @javascript
  (#eq? @_language "js"))

(line_comment) @comment
(block_comment) @comment
