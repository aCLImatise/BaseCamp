from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Float, Boolean

Barrnap_Py_V0_1_0 = CommandToolBuilder(tool="barrnap.py", base_command=["barrnap.py"], inputs=[ToolInput(tag="in_kingdom", input_type=String(optional=True), prefix="--kingdom", doc=InputDocumentation(doc="whether to look for eukaryotic, archaeal, or bacterial\nrDNA; default: bac")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads/cores/CPUs to use;default: 8")), ToolInput(tag="in_evalue", input_type=Float(optional=True), prefix="--evalue", doc=InputDocumentation(doc="Similarity e-value cut-off; default: 1e-06")), ToolInput(tag="in_len_cut_off", input_type=Int(optional=True), prefix="--lencutoff", doc=InputDocumentation(doc="Proportional length threshold to label as partial;\ndefault: 0.8")), ToolInput(tag="in_reject", input_type=Int(optional=True), prefix="--reject", doc=InputDocumentation(doc="Proportional length threshold to reject prediction;\ndefault: 0.5")), ToolInput(tag="in_in_cseq", input_type=Boolean(optional=True), prefix="--incseq", doc=InputDocumentation(doc="Include FASTA input sequences in GFF3 output")), ToolInput(tag="in_citation", input_type=Boolean(optional=True), prefix="--citation", doc=InputDocumentation(doc="Print citation for referencing barrnap")), ToolInput(tag="in_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Barrnap_Py_V0_1_0().translate("wdl", allow_empty_container=True)

