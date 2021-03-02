from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Verify_Mapping_Quality_Pl_V0_1_0 = CommandToolBuilder(tool="verify_mapping_quality.pl", base_command=["verify_mapping_quality.pl"], inputs=[ToolInput(tag="in_bam", input_type=Boolean(optional=True), prefix="--bam", doc=InputDocumentation(doc="[REQUIRED]\nThe location for a specific BAM file in the dataset. Multiple BAM\nfiles can be input. Example with 3 BAM files: --bam\nbam1=/path/bam1.bam --bam bam2=/path/bam2.bam --bam\nbam3=/path/bam3.bam")), ToolInput(tag="in_min_depth", input_type=Boolean(optional=True), prefix="--min-depth", doc=InputDocumentation(doc="[optional]\nThe minimum depth of coverage required at each genome position to be\nconsidered mapped. Default value is 15x.")), ToolInput(tag="in_min_map", input_type=Boolean(optional=True), prefix="--min-map", doc=InputDocumentation(doc="[optional]\nThe minimum percent mapped to reference for each strain, pipeline\nwill log all strains that do not meet this minimum percentage.\nDefault value is 80%.")), ToolInput(tag="in_cores", input_type=Boolean(optional=True), prefix="--cores", doc=InputDocumentation(doc="[optional]\nThe number of CPU cores that should be used for the calculations.")), ToolInput(tag="in_output", input_type=Boolean(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to write human readable report")), ToolInput(tag="in_out_strains", input_type=Boolean(optional=True), prefix="--out_strains", doc=InputDocumentation(doc="Path to write list of strain(s) one per line for filter File\ncollection tool or vcf2snvalignment itself"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Verify_Mapping_Quality_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

