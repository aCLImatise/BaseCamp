from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Array, String, Float, Int

Test_Table_Equality_V0_1_0 = CommandToolBuilder(tool="test_table_equality", base_command=["test_table_equality"], inputs=[ToolInput(tag="in_give_verbose_output", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Give verbose output")), ToolInput(tag="in_sort_keys", input_type=Array(t=String(), optional=True), prefix="--sort_keys", doc=InputDocumentation(doc="If specified, values will be sorted by the column(s)\ncorresponding to these name or numbers (0-indexed)\nbefore comparison")), ToolInput(tag="in_exclude", input_type=Array(t=String(), optional=True), prefix="--exclude", doc=InputDocumentation(doc="Key or number (0-indexed) of columns to exclude")), ToolInput(tag="in_no_header", input_type=Boolean(optional=True), prefix="--no_header", doc=InputDocumentation(doc="If specified, no header row is present. Columns for\nall other command-line flags must be referenced by\nnumber (starting at zero) rather than name, and will\nbe assumed to be in the same order in both files.")), ToolInput(tag="in_to_l", input_type=Float(optional=True), prefix="--tol", doc=InputDocumentation(doc="Tolerance by which floats are allowed to differ\n(Default: 1e-8)\n")), ToolInput(tag="in_file_one", input_type=Int(), position=0, doc=InputDocumentation(doc="file2"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Test_Table_Equality_V0_1_0().translate("wdl", allow_empty_container=True)

