from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Demo_Regexp_Grep_V0_1_0 = CommandToolBuilder(tool="demo_regexp_grep", base_command=["demo_regexp_grep"], inputs=[ToolInput(tag="in_count", input_type=Boolean(optional=True), prefix="--count", doc=InputDocumentation(doc="print only a count of matching lines per FILE")), ToolInput(tag="in_ignore_case", input_type=Boolean(optional=True), prefix="--ignore-case", doc=InputDocumentation(doc="ignore case distinctions")), ToolInput(tag="in_files_with_matches", input_type=Boolean(optional=True), prefix="--files-with-matches", doc=InputDocumentation(doc="print only FILE names containing matches")), ToolInput(tag="in_line_number", input_type=Boolean(optional=True), prefix="--line-number", doc=InputDocumentation(doc="print line number with output lines")), ToolInput(tag="in_recursive", input_type=Boolean(optional=True), prefix="--recursive", doc=InputDocumentation(doc="recursively scan sub-directories")), ToolInput(tag="in_no_messages", input_type=Boolean(optional=True), prefix="--no-messages", doc=InputDocumentation(doc="suppress error messages")), ToolInput(tag="in_invert_match", input_type=Boolean(optional=True), prefix="--invert-match", doc=InputDocumentation(doc="select non-matching lines")), ToolInput(tag="in_line_regex", input_type=Boolean(optional=True), prefix="--line-regex", doc=InputDocumentation(doc="force PATTERN to match only whole lines")), ToolInput(tag="in_line_regexp", input_type=Boolean(optional=True), prefix="--line-regexp", doc=InputDocumentation(doc="force PATTERN to match only whole lines")), ToolInput(tag="in_filename__filefilenameread", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="<filename>  or  --file=<filename>\nRead patterns from <filename> instead of using a command line option.\nTrailing white space is removed; blanks lines are ignored.\nThere is a maximum of 100 patterns.")), ToolInput(tag="in_pc_regrep", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Demo_Regexp_Grep_V0_1_0().translate("wdl", allow_empty_container=True)

