from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Debarcer_Bed_V0_1_0 = CommandToolBuilder(tool="debarcer_bed", base_command=["debarcer", "bed"], inputs=[ToolInput(tag="in_bam_file", input_type=File(optional=True), prefix="--Bamfile", doc=InputDocumentation(doc="Path to the BAM file")), ToolInput(tag="in_bed_file", input_type=File(optional=True), prefix="--Bedfile", doc=InputDocumentation(doc="Path to the output bed file")), ToolInput(tag="in_min_cov", input_type=Int(optional=True), prefix="--MinCov", doc=InputDocumentation(doc="Minimum read depth value at all positions in genomic\ninterval")), ToolInput(tag="in_region_size", input_type=Int(optional=True), prefix="--RegionSize", doc=InputDocumentation(doc="Minimum length of the genomic interval (in bp)")), ToolInput(tag="in_maxdepth", input_type=Int(optional=True), prefix="--MaxDepth", doc=InputDocumentation(doc="Maximum read depth. Default is 1000000")), ToolInput(tag="in_ignore_orphans", input_type=Boolean(optional=True), prefix="--IgnoreOrphans", doc=InputDocumentation(doc="Ignore orphans (paired reads that are not in a proper\npair). Default is False, becomes True if used")), ToolInput(tag="in_stepper", input_type=String(optional=True), prefix="--Stepper", doc=InputDocumentation(doc="Filter or include reads in the pileup. Options all:\nskip reads with BAM_FUNMAP, BAM_FSECONDARY,\nBAM_FQCFAIL, BAM_FDUP flags, nofilter: uses every\nsingle read turning off any filtering\n"))], outputs=[ToolOutput(tag="out_bed_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_bed_file", type_hint=File()), doc=OutputDocumentation(doc="Path to the output bed file"))], container="quay.io/biocontainers/debarcer:2.1.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Debarcer_Bed_V0_1_0().translate("wdl")

