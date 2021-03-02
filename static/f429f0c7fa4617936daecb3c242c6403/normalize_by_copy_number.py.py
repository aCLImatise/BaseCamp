from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File

Normalize_By_Copy_Number_Py_V0_1_0 = CommandToolBuilder(tool="normalize_by_copy_number.py", base_command=["normalize_by_copy_number.py"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print information during execution -- useful for\ndebugging [default: False]")), ToolInput(tag="in_gg_version", input_type=Int(optional=True), prefix="--gg_version", doc=InputDocumentation(doc="Version of GreenGenes that was used for OTU picking.\nValid choices are: 13_5, 18may2012 [default: 13_5]")), ToolInput(tag="in_input_count_fp", input_type=Int(optional=True), prefix="--input_count_fp", doc=InputDocumentation(doc="Precalculated input marker gene copy number\npredictions on per otu basis in biom format (can be\ngzipped).Note: using this option overrides\n--gg_version. [default: none]")), ToolInput(tag="in_metadata_identifer", input_type=Int(optional=True), prefix="--metadata_identifer", doc=InputDocumentation(doc="identifier for copy number entry as observation\nmetadata [default: CopyNumber]")), ToolInput(tag="in_load_pre_calc_file_in_biom", input_type=Boolean(optional=True), prefix="--load_precalc_file_in_biom", doc=InputDocumentation(doc="Instead of loading the precalculated file in tab-\ndelimited format (with otu ids as row ids and traits\nas columns) load the data in biom format (with otu as\nSampleIds and traits as ObservationIds) [default:\nFalse]")), ToolInput(tag="in_input_otu_fp", input_type=File(optional=True), prefix="--input_otu_fp", doc=InputDocumentation(doc="the input otu table filepath in biom format [REQUIRED]")), ToolInput(tag="in_output_otu_fp", input_type=File(optional=True), prefix="--output_otu_fp", doc=InputDocumentation(doc="the output otu table filepath in biom format\n[REQUIRED]\n"))], outputs=[ToolOutput(tag="out_output_otu_fp", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_otu_fp", type_hint=File()), doc=OutputDocumentation(doc="the output otu table filepath in biom format\n[REQUIRED]\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Normalize_By_Copy_Number_Py_V0_1_0().translate("wdl", allow_empty_container=True)

