from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Convert_Sam_For_Rsem_V0_1_0 = CommandToolBuilder(tool="convert_sam_for_rsem", base_command=["convert-sam-for-rsem"], inputs=[ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="--num-threads", doc=InputDocumentation(doc="Set the number of threads to be used for converting. (Default: 1)")), ToolInput(tag="in_memory_per_thread", input_type=String(optional=True), prefix="--memory-per-thread", doc=InputDocumentation(doc="Set the maximum allowable memory per thread. <string> represents the\nmemory and accepts suffices 'K/M/G'. (Default: 1G)")), ToolInput(tag="in_output_file_name", input_type=String(), position=0, doc=InputDocumentation(doc="The output name for the converted file. 'convert-sam-for-rsem' will\noutput a BAM with the name 'output_file_name.bam'."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convert_Sam_For_Rsem_V0_1_0().translate("wdl", allow_empty_container=True)

