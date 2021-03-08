from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int, File

Vcfallelicprimitives_V0_1_0 = CommandToolBuilder(tool="vcfallelicprimitives", base_command=["vcfallelicprimitives"], inputs=[ToolInput(tag="in_use_mnps", input_type=Boolean(optional=True), prefix="--use-mnps", doc=InputDocumentation(doc="Retain MNPs as separate events (default: false).")), ToolInput(tag="in_tag_parsed", input_type=String(optional=True), prefix="--tag-parsed", doc=InputDocumentation(doc="Tag records which are split apart of a complex allele with this flag.")), ToolInput(tag="in_max_length", input_type=Int(optional=True), prefix="--max-length", doc=InputDocumentation(doc="Do not manipulate records in which either the ALT or\nREF is longer than LEN (default: 200).")), ToolInput(tag="in_keep_info", input_type=Boolean(optional=True), prefix="--keep-info", doc=InputDocumentation(doc="Maintain site and allele-level annotations when decomposing.\nNote that in many cases, such as multisample VCFs, these won't\nbe valid post-decomposition.  For biallelic loci in single-sample\nVCFs, they should be usable with caution.")), ToolInput(tag="in_keep_geno", input_type=Boolean(optional=True), prefix="--keep-geno", doc=InputDocumentation(doc="Maintain genotype-level annotations when decomposing.  Similar\ncaution should be used for this as for --keep-info.")), ToolInput(tag="in_file", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfallelicprimitives_V0_1_0().translate("wdl")

