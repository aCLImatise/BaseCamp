from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Tepid_Map_Se_V0_1_0 = CommandToolBuilder(tool="tepid_map_se", base_command=["tepid-map-se"], inputs=[ToolInput(tag="in_path_bowtie_index", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="path to bowtie2 index")), ToolInput(tag="in_path_yaha_index", input_type=Boolean(optional=True), prefix="-y", doc=InputDocumentation(doc="path to yaha index")), ToolInput(tag="in_number_cores_use", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="number of cores to use")), ToolInput(tag="in_sample_name", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="sample name")), ToolInput(tag="in_fastq_file_containing", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="fastq file containing reads")), ToolInput(tag="in_recursive_optional", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="recursive (optional)")), ToolInput(tag="in_gzip_fastq_files", input_type=Boolean(optional=True), prefix="-z", doc=InputDocumentation(doc="gzip fastq files (optional)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tepid_Map_Se_V0_1_0().translate("wdl", allow_empty_container=True)

