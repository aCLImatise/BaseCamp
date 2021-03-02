from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int

Metawrap_Classify_Bins_V0_1_0 = CommandToolBuilder(tool="metaWRAP_classify_bins", base_command=["metaWRAP", "classify_bins"], inputs=[ToolInput(tag="in_folder_bins_classified", input_type=Directory(optional=True), prefix="-b", doc=InputDocumentation(doc="folder with the bins to be classified (in fasta format)")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="output directory")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metawrap_Classify_Bins_V0_1_0().translate("wdl", allow_empty_container=True)

