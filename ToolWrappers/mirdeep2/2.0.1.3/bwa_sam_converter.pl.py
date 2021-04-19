from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Bwa_Sam_Converter_Pl_V0_1_0 = CommandToolBuilder(tool="bwa_sam_converter.pl", base_command=["bwa_sam_converter.pl"], inputs=[ToolInput(tag="in_file_read_mappings", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="file with read mappings in sam format")), ToolInput(tag="in_collapsed_read_output", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="collapsed read output file")), ToolInput(tag="in_mapping_file_arf", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="mapping file in arf format")), ToolInput(tag="in_collapse_sam_file", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="collapse sam file first and create correct mirdeep2 ids")), ToolInput(tag="in_tag_temporary_directory", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="tag for temporary directory")), ToolInput(tag="in_delete_temporary_directory", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="do not delete temporary directory")), ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_collapsed_read_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_collapsed_read_output", type_hint=File()), doc=OutputDocumentation(doc="collapsed read output file"))], container="quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bwa_Sam_Converter_Pl_V0_1_0().translate("wdl")

