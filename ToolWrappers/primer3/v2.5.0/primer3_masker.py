from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Primer3_Masker_V0_1_0 = CommandToolBuilder(tool="primer3_masker", base_command=["primer3_masker"], inputs=[ToolInput(tag="in_km_er_lists_path", input_type=Boolean(optional=True), prefix="--kmer_lists_path", doc=InputDocumentation(doc="- path to the kmer list files (default: ../kmer_lists/)")), ToolInput(tag="in_list_prefix", input_type=Boolean(optional=True), prefix="--list_prefix", doc=InputDocumentation(doc="- prefix of the k-mer lists to use with default model (default: homo_sapiens)")), ToolInput(tag="in_absolute_value_cut_off", input_type=Boolean(optional=True), prefix="--absolute_value_cutoff", doc=InputDocumentation(doc="- masking cutoff based on k-mer count; requires a single list name, defined with -l")), ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc="- define a single k-mer list for masking with absolute cutoff option -a")), ToolInput(tag="in_mask_five_p", input_type=Boolean(optional=True), prefix="--mask_5p", doc=InputDocumentation(doc="- nucleotides to mask in 5' direction (default: 1)")), ToolInput(tag="in_mask_three_p", input_type=Boolean(optional=True), prefix="--mask_3p", doc=InputDocumentation(doc="- nucleotides to mask in 3' direction (default: 0)")), ToolInput(tag="in_masking_char", input_type=Boolean(optional=True), prefix="--masking_char", doc=InputDocumentation(doc="- character used for masking (default: N)")), ToolInput(tag="in_soft_mask", input_type=Boolean(optional=True), prefix="--soft_mask", doc=InputDocumentation(doc="- use soft masking (default: false)")), ToolInput(tag="in_masking_direction", input_type=Boolean(optional=True), prefix="--masking_direction", doc=InputDocumentation(doc="- a strand to mask (fwd, rev, both) (default: both)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Primer3_Masker_V0_1_0().translate("wdl", allow_empty_container=True)

