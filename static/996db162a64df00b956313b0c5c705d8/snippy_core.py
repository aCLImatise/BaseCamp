from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int, File

Snippy_Core_V0_1_0 = CommandToolBuilder(tool="snippy_core", base_command=["snippy-core"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="!        Output verbose debug info (default '0').")), ToolInput(tag="in_check", input_type=Boolean(optional=True), prefix="--check", doc=InputDocumentation(doc="!        Check dependencies and exit (default '0').")), ToolInput(tag="in_ref", input_type=String(optional=True), prefix="--ref", doc=InputDocumentation(doc="Reference in FASTA or GENBANK (default '').")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Output prefix (default 'core').")), ToolInput(tag="in_max_hap", input_type=Int(optional=True), prefix="--maxhap", doc=InputDocumentation(doc="Largest haplotype to decompose (default '100').")), ToolInput(tag="in_mask", input_type=File(optional=True), prefix="--mask", doc=InputDocumentation(doc="BED file of sites to mask (default '').")), ToolInput(tag="in_gap_char", input_type=String(optional=True), prefix="--gap-char", doc=InputDocumentation(doc="Gap/deletion character (default '-').")), ToolInput(tag="in_mask_char", input_type=String(optional=True), prefix="--mask-char", doc=InputDocumentation(doc="Masking character (default 'X').")), ToolInput(tag="in_in_prefix", input_type=String(optional=True), prefix="--inprefix", doc=InputDocumentation(doc="Expected prefix of Snippy output files (default 'snps')."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snippy_Core_V0_1_0().translate("wdl", allow_empty_container=True)

