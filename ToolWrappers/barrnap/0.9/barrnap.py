from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Barrnap_V0_1_0 = CommandToolBuilder(tool="barrnap", base_command=["barrnap"], inputs=[ToolInput(tag="in_citation", input_type=Boolean(optional=True), prefix="--citation", doc=InputDocumentation(doc="Print citation for referencing barrnap")), ToolInput(tag="in_kingdom", input_type=Boolean(optional=True), prefix="--kingdom", doc=InputDocumentation(doc="[X]     Kingdom: arc mito bac euk (default 'bac')")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="No screen output (default OFF)")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="[N]     Number of threads/cores/CPUs to use (default '1')")), ToolInput(tag="in_len_cut_off", input_type=Boolean(optional=True), prefix="--lencutoff", doc=InputDocumentation(doc="[n.n] Proportional length threshold to label as partial (default '0.8')")), ToolInput(tag="in_reject", input_type=Boolean(optional=True), prefix="--reject", doc=InputDocumentation(doc="[n.n]    Proportional length threshold to reject prediction (default '0.25')")), ToolInput(tag="in_evalue", input_type=Boolean(optional=True), prefix="--evalue", doc=InputDocumentation(doc="[n.n]    Similarity e-value cut-off (default '1e-06')")), ToolInput(tag="in_in_cseq", input_type=Boolean(optional=True), prefix="--incseq", doc=InputDocumentation(doc="Include FASTA _input_ sequences in GFF3 output (default OFF)")), ToolInput(tag="in_out_seq", input_type=Boolean(optional=True), prefix="--outseq", doc=InputDocumentation(doc="[X]      Save rRNA hit seqs to this FASTA file (default '')"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Barrnap_V0_1_0().translate("wdl", allow_empty_container=True)

