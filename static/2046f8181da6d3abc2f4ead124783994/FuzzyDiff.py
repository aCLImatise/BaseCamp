from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Fuzzydiff_V0_1_0 = CommandToolBuilder(tool="FuzzyDiff", base_command=["FuzzyDiff"], inputs=[ToolInput(tag="in_in_one", input_type=File(optional=True), prefix="-in1", doc=InputDocumentation(doc="*         First input file")), ToolInput(tag="in_in_two", input_type=File(optional=True), prefix="-in2", doc=InputDocumentation(doc="*         Second input file")), ToolInput(tag="in_ratio", input_type=Int(optional=True), prefix="-ratio", doc=InputDocumentation(doc="Acceptable relative error. Only one of 'ratio' or 'absdiff' has to be satisfied.  Use 'absdiff' to deal with cases like 'zero vs. epsilon'. (default: '1.0' min: '1.0')")), ToolInput(tag="in_abs_diff", input_type=Int(optional=True), prefix="-absdiff", doc=InputDocumentation(doc="Acceptable absolute difference. Only one of 'ratio' or 'absdiff' has to be satisfied.  (default: '0.0' min: '0.0')")), ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="-verbose", doc=InputDocumentation(doc="Set verbose level:\n0 = very quiet mode (absolutely no output)\n1 = quiet mode (no output unless differences detected)\n2 = default (include summary at end)\n3 = continue after errors\n(default: '2' min: '0' max: '3')")), ToolInput(tag="in_tab_width", input_type=Int(optional=True), prefix="-tab_width", doc=InputDocumentation(doc="Tabulator width, used for calculation of column numbers (default: '8' min: '1')")), ToolInput(tag="in_first_column", input_type=Int(optional=True), prefix="-first_column", doc=InputDocumentation(doc="Number of first column, used for calculation of column numbers (default: '1' min: '0')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fuzzydiff_V0_1_0().translate("wdl", allow_empty_container=True)

