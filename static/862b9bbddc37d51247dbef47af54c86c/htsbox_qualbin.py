from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Htsbox_Qualbin_V0_1_0 = CommandToolBuilder(tool="htsbox_qualbin", base_command=["htsbox", "qualbin"], inputs=[ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads [1]")), ToolInput(tag="in_number_records_buffer", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="number of records in buffer [1000000]")), ToolInput(tag="in_number_of_bins", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="number of bins (0, 1, 2, 3 or 7) [2]")), ToolInput(tag="in_input_bam_file", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="the input is a BAM file")), ToolInput(tag="in_output_uncompressed_force", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="output uncompressed BAM (force -b)")), ToolInput(tag="in_qual_bin", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Htsbox_Qualbin_V0_1_0().translate("wdl", allow_empty_container=True)

