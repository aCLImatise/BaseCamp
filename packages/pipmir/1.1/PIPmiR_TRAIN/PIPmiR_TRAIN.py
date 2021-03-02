from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Pipmir_Train_V0_1_0 = CommandToolBuilder(tool="PIPmiR_TRAIN", base_command=["PIPmiR", "TRAIN"], inputs=[ToolInput(tag="in_p", input_type=File(optional=True), prefix="-P", doc=InputDocumentation(doc="File of putative miRNA precursor sequences and their fold structure (see README)")), ToolInput(tag="in_k", input_type=File(optional=True), prefix="-K", doc=InputDocumentation(doc="File of putative miRNA precursor sequences and their fold structure (see README)")), ToolInput(tag="in_sorted_bam_file", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc=".bam Sorted .bam file containing alignment of the read data")), ToolInput(tag="in_file_write_data", input_type=File(optional=True), prefix="-T", doc=InputDocumentation(doc="File to write classifier training data (do not include filepath, new file will be generated in ./src/)")), ToolInput(tag="in_minimum_read_count", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="Minimum read count for a mature to be considered expressed (Default: 10)")), ToolInput(tag="in_maximum_amount_memory", input_type=Int(optional=True), prefix="-X", doc=InputDocumentation(doc="Maximum amount of memory PIPmiR can use (Default: 4G)"))], outputs=[ToolOutput(tag="out_file_write_data", output_type=File(optional=True), selector=InputSelector(input_to_select="in_file_write_data", type_hint=File()), doc=OutputDocumentation(doc="File to write classifier training data (do not include filepath, new file will be generated in ./src/)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pipmir_Train_V0_1_0().translate("wdl", allow_empty_container=True)

