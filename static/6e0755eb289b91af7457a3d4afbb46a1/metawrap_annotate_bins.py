from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int

Metawrap_Annotate_Bins_V0_1_0 = CommandToolBuilder(tool="metawrap_annotate_bins", base_command=["metawrap", "annotate_bins"], inputs=[ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="output directory")), ToolInput(tag="in_number_threads_default", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads (default=1)")), ToolInput(tag="in_folder_metagenomic_bins", input_type=Directory(optional=True), prefix="-b", doc=InputDocumentation(doc="folder with metagenomic bins in fasta format"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metawrap_Annotate_Bins_V0_1_0().translate("wdl", allow_empty_container=True)

