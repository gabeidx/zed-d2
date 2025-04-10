;; Language injection for markdown by default
(
  (text_block . (raw_text) @injection.content)
  (#set! injection.language "markdown")
)

;; Language-specific injection via explicit language node
(
  (text_block
    (language) @injection.language
    (raw_text) @injection.content)
)

;; Comment blocks as injectable content
(
  (line_comment) @injection.content
  (#set! @injection.language "comment")
)

(
  (block_comment) @injection.content
  (#set! @injection.language "comment")
)
