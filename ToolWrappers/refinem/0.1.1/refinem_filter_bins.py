from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, String

Refinem_Filter_Bins_V0_1_0 = CommandToolBuilder(tool="refinem_filter_bins", base_command=["refinem", "filter_bins"], inputs=[ToolInput(tag="in_genome_ext", input_type=Directory(optional=True), prefix="--genome_ext", doc=InputDocumentation(doc="extension of genomes (other files in directory are\nignored) (default: fna)")), ToolInput(tag="in_modified_only", input_type=Directory(optional=True), prefix="--modified_only", doc=InputDocumentation(doc="only copy modified bins to the output folder")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress output of logger")), ToolInput(tag="in_genome_nt_dir", input_type=String(), position=0, doc=InputDocumentation(doc="directory containing nucleotide scaffolds for each")), ToolInput(tag="in_genome", input_type=String(), position=1, doc=InputDocumentation(doc="filter_file           file specifying scaffolds to remove")), ToolInput(tag="in_output_dir", input_type=String(), position=2, doc=InputDocumentation(doc="output directory"))], outputs=[ToolOutput(tag="out_modified_only", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_modified_only", type_hint=File()), doc=OutputDocumentation(doc="only copy modified bins to the output folder"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refinem_Filter_Bins_V0_1_0().translate("wdl", allow_empty_container=True)

