from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Convert_Table_Py_V0_1_0 = CommandToolBuilder(tool="convert_table.py", base_command=["convert_table.py"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to output. Corresponds to folder name if multiple\nfiles are output, otherwise it will be a filename.")), ToolInput(tag="in_conversion", input_type=Int(optional=True), prefix="--conversion", doc=InputDocumentation(doc="Type of conversion to perform ('contrib_to_legacy',\n'humann2_unstrat_to_picrust2',\n'humann2_strat_to_picrust2',\n'picrust2_unstrat_to_humann2_split',\n'picrust2_strat_to_humann2_split', or\n'picrust2_to_humann2_merged').")), ToolInput(tag="in_raw_abun", input_type=Boolean(optional=True), prefix="--raw_abun", doc=InputDocumentation(doc="When converting to legacy contributional table output\nabundance (i.e. OTUAbundanceInSample column) as raw\nabundance rather than relative abundances (relative\nabundances are the default).")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="Input table to convert. If there are multiple input\nfiles (e.g. if multiple HUMAnN2 gene tables for\ndifferent samples should be converted to a single\nPICRUSt2 table) then specify them all: file1 file2\nfile3..."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Path to output. Corresponds to folder name if multiple\nfiles are output, otherwise it will be a filename."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convert_Table_Py_V0_1_0().translate("wdl", allow_empty_container=True)

