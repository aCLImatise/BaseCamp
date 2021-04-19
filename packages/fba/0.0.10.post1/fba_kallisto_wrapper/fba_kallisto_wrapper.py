from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File, Directory

Fba_Kallisto_Wrapper_V0_1_0 = CommandToolBuilder(tool="fba_kallisto_wrapper", base_command=["fba", "kallisto_wrapper"], inputs=[ToolInput(tag="in_read_one", input_type=Int(optional=True), prefix="--read1", doc=InputDocumentation(doc="specify fastq file for read 1")), ToolInput(tag="in_read_two", input_type=Int(optional=True), prefix="--read2", doc=InputDocumentation(doc="specify fastq file for read 2")), ToolInput(tag="in_whitelist", input_type=String(optional=True), prefix="--whitelist", doc=InputDocumentation(doc="specify a whitelist of accepted cell barcodes")), ToolInput(tag="in_feature_ref", input_type=String(optional=True), prefix="--feature_ref", doc=InputDocumentation(doc="specify a reference of feature barcodes")), ToolInput(tag="in_technology", input_type=Int(optional=True), prefix="--technology", doc=InputDocumentation(doc="specify feature barcoding technology. The default is\n10xv3")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="specify an output file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="specify number of kallisto/bustools threads to launch.\nDefault (1)")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="--output_directory", doc=InputDocumentation(doc="specify a temp directory. Default (./kallisto)\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="specify an output file")), ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="specify a temp directory. Default (./kallisto)\n"))], container="quay.io/biocontainers/fba:0.0.10.post1--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fba_Kallisto_Wrapper_V0_1_0().translate("wdl")

