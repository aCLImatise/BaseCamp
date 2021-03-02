from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Int

Tally_Variants_From_Multiple_Vcfs_Py_V0_1_0 = CommandToolBuilder(tool="tally_variants_from_multiple_vcfs.py", base_command=["tally_variants_from_multiple_vcfs.py"], inputs=[ToolInput(tag="in_vcf_files", input_type=Array(t=String(), optional=True), prefix="--vcf-files", doc=InputDocumentation(doc="multiple vcf files (default: None)")), ToolInput(tag="in_bam_files", input_type=Array(t=String(), optional=True), prefix="--bam-files", doc=InputDocumentation(doc="multiple bam files (default: None)")), ToolInput(tag="in_sample_names", input_type=Array(t=String(), optional=True), prefix="--sample-names", doc=InputDocumentation(doc="names for the vcf files (default: None)")), ToolInput(tag="in_filter_labels", input_type=Array(t=String(), optional=True), prefix="--filter-labels", doc=InputDocumentation(doc="Filter labels to count (default: ['PASS'])")), ToolInput(tag="in_bed_inclusion", input_type=File(optional=True), prefix="--bed-inclusion", doc=InputDocumentation(doc="Bed file to include. (default: None)")), ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="--num-threads", doc=InputDocumentation(doc="threads (default: 1)")), ToolInput(tag="in_minimum_samples", input_type=Int(optional=True), prefix="--minimum-samples", doc=InputDocumentation(doc="Print out only if at least this number of vcf files\nhave the variant. (default: 1)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tally_Variants_From_Multiple_Vcfs_Py_V0_1_0().translate("wdl", allow_empty_container=True)

