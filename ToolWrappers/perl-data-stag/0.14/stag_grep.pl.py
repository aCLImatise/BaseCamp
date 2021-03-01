from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Stag_Grep_Pl_V0_1_0 = CommandToolBuilder(tool="stag_grep.pl", base_command=["stag-grep.pl"], inputs=[ToolInput(tag="in_parser_formatformat_one", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="|parser FORMAT\nFORMAT is one of xml, sxpr or itext, or the name of a perl module\nxml assumed as default")), ToolInput(tag="in_writer_formatformat_one", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="|writer FORMAT\nFORMAT is one of xml, sxpr or itext, or the name of a perl module")), ToolInput(tag="in_countprints_number_nodes", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="|count\nprints the number of nodes that pass the test")), ToolInput(tag="in_filter_file", input_type=Boolean(optional=True), prefix="-filterfile", doc=InputDocumentation(doc="|f\na file containing a perl subroutine (in place of the SUB argument)")), ToolInput(tag="in_query_tagval_qquery", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="|query TAG1=VAL1 -q|query TAG2=VAL2 ... -q|query TAGN=VALN\nfilters based on the field TAG\nother operators can be used too - eg <, <=, etc\nmultiple q arguments can be passed in\nfor more complex operations, pass in your own subroutine, see below")), ToolInput(tag="in_subroutine_dot", input_type=String(), position=0, doc=InputDocumentation(doc="if the subroutine passes, the node will be passed to the writer for")), ToolInput(tag="in_display", input_type=String(), position=1, doc=InputDocumentation(doc="NODE")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="the file to be parser. If no parser option is supplied, this is\nassumed to a be a stag compatible syntax (xml, sxpr or itext);\notherwise you should parse in a parser name or a parser module that\nthrows stag events"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stag_Grep_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

