from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Vcfgeno2Haplo_V0_1_0 = CommandToolBuilder(tool="vcfgeno2haplo", base_command=["vcfgeno2haplo"], inputs=[ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="FASTA reference file, required with -i and -u")), ToolInput(tag="in_window_size", input_type=Int(optional=True), prefix="--window-size", doc=InputDocumentation(doc="Merge variants at most this many bp apart (default 30)")), ToolInput(tag="in_only_variants", input_type=Boolean(optional=True), prefix="--only-variants", doc=InputDocumentation(doc="Don't output the entire haplotype, just concatenate\nREF/ALT strings (delimited by ':')")), ToolInput(tag="in_vcf_file", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfgeno2Haplo_V0_1_0().translate("wdl", allow_empty_container=True)

