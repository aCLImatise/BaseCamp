from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Int, Boolean

Skmer_Reference_V0_1_0 = CommandToolBuilder(tool="skmer_reference", base_command=["skmer", "reference"], inputs=[ToolInput(tag="in_directory_library_defaultworkingdirectorylibrary", input_type=Directory(optional=True), prefix="-l", doc=InputDocumentation(doc="Directory of output (reference) library. Default:\nworking_directory/library")), ToolInput(tag="in_output_distances_prefix", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="Output (distances) prefix. Default: ref-dist-mat")), ToolInput(tag="in_kmer_length_default", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="K-mer length [1-31]. Default: 31")), ToolInput(tag="in_sketch_size_default", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="Sketch size. Default: 10000000")), ToolInput(tag="in_base_error_rate", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="Base error rate. By default, the error rate is automatically")), ToolInput(tag="in_max_number_use", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="Max number of processors to use [1-8]. Default for this machine:\n8\n")), ToolInput(tag="in_t", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_estimated_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-t          Apply Jukes-Cantor transformation to distances. Output 5.0 if"))], outputs=[ToolOutput(tag="out_directory_library_defaultworkingdirectorylibrary", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_directory_library_defaultworkingdirectorylibrary", type_hint=File()), doc=OutputDocumentation(doc="Directory of output (reference) library. Default:\nworking_directory/library"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Skmer_Reference_V0_1_0().translate("wdl", allow_empty_container=True)

