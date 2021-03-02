from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, Boolean, File

Exonpairs_V0_1_0 = CommandToolBuilder(tool="exonpairs", base_command=["exonpairs"], inputs=[ToolInput(tag="in_min_intron", input_type=Int(optional=True), prefix="-min-intron", doc=InputDocumentation(doc="minimum Intron length [30]")), ToolInput(tag="in_max_intron", input_type=Int(optional=True), prefix="-max-intron", doc=InputDocumentation(doc="maximum Intron length [10000]")), ToolInput(tag="in_ein_it_length", input_type=Int(optional=True), prefix="-einit-length", doc=InputDocumentation(doc="minimum Einit length in bp [10]")), ToolInput(tag="in_eterm_length", input_type=Int(optional=True), prefix="-eterm-length", doc=InputDocumentation(doc="minimum Eterm length in bp [10]")), ToolInput(tag="in_exon_length", input_type=Int(optional=True), prefix="-exon-length", doc=InputDocumentation(doc="minimum Exon length in bp [30]")), ToolInput(tag="in_intron_score", input_type=Float(optional=True), prefix="-intron-score", doc=InputDocumentation(doc="minimum Intron score in bits [-5]")), ToolInput(tag="in_ein_it_score", input_type=Float(optional=True), prefix="-einit-score", doc=InputDocumentation(doc="minimum Einit score in bits [-5]")), ToolInput(tag="in_eterm_score", input_type=Float(optional=True), prefix="-eterm-score", doc=InputDocumentation(doc="minimum Eterm score in bits [-5]")), ToolInput(tag="in_exon_score", input_type=Float(optional=True), prefix="-exon-score", doc=InputDocumentation(doc="minimum Exon score in bits [-5]")), ToolInput(tag="in_pair_score", input_type=Float(optional=True), prefix="-pair-score", doc=InputDocumentation(doc="minimum pair score (exon-intron-exon) [10]")), ToolInput(tag="in_flank_length", input_type=Int(optional=True), prefix="-flank-length", doc=InputDocumentation(doc="length of flanking sequence per exon [20]")), ToolInput(tag="in_lc_mask", input_type=Boolean(optional=True), prefix="-lcmask", doc=InputDocumentation(doc="treat lowercase as N")), ToolInput(tag="in_hmm_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Exonpairs_V0_1_0().translate("wdl", allow_empty_container=True)

