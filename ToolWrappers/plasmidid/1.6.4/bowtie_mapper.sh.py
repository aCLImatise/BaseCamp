from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Int

Bowtie_Mapper_Sh_V0_1_0 = CommandToolBuilder(tool="bowtie_mapper.sh", base_command=["bowtie_mapper.sh"], inputs=[ToolInput(tag="in_i", input_type=Directory(optional=True), prefix="-i", doc=InputDocumentation(doc="directory (optional)")), ToolInput(tag="in_o", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="directory (optional)")), ToolInput(tag="in_to_map_fasta", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="to map (.fasta)")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="name")), ToolInput(tag="in_name_optional_unset", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="name (optional). If unset, samples will be gathered in NO_GROUP group")), ToolInput(tag="in_one", input_type=Int(optional=True), prefix="-1", doc=InputDocumentation(doc="corresponding to paired-end R1")), ToolInput(tag="in_two", input_type=Int(optional=True), prefix="-2", doc=InputDocumentation(doc="corresponding to paired-end R2")), ToolInput(tag="in_index_optional_default", input_type=Int(optional=True), prefix="-f", doc=InputDocumentation(doc="index for bowtie_build (optional). Default value 1. for quicker indexing use higher number")), ToolInput(tag="in_off_by_default", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc="(off by default)")), ToolInput(tag="in_of_threads", input_type=Int(optional=True), prefix="-T", doc=InputDocumentation(doc="of threads")), ToolInput(tag="in_usage_message", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="usage message"))], outputs=[], container="quay.io/biocontainers/plasmidid:1.6.4--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bowtie_Mapper_Sh_V0_1_0().translate("wdl")

