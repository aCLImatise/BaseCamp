from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int, String, Boolean

Rgt_Tools_Py_Thor_Split_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_thor_split", base_command=["rgt-tools.py", "thor_split"], inputs=[ToolInput(tag="in_input_bed_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input BED file")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Output directory.")), ToolInput(tag="in_define_cutoff_pvalue", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="Define the cut-off of p-value (-log10) for filtering.")), ToolInput(tag="in_fc", input_type=String(optional=True), prefix="-fc", doc=InputDocumentation(doc="Define the cut-off of foldchange for filtering.")), ToolInput(tag="in_rename", input_type=Boolean(optional=True), prefix="--rename", doc=InputDocumentation(doc="Rename the peak names by associated genes.")), ToolInput(tag="in_define_the_genome", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="Define the genome")), ToolInput(tag="in_define_maximum_distance", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="Define the maximum distance for merging the nearby regions")), ToolInput(tag="in_define_bin_size", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="Define the bin size")), ToolInput(tag="in_define_step_size", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="Define the step size")), ToolInput(tag="in_dnc", input_type=String(optional=True), prefix="-dnc", doc=InputDocumentation(doc="Define the cutoff of the difference of norm. read counts")), ToolInput(tag="in_snc", input_type=String(optional=True), prefix="-snc", doc=InputDocumentation(doc="Define the cutoff of the sum of norm. read counts"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Output directory."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Thor_Split_V0_1_0().translate("wdl", allow_empty_container=True)

