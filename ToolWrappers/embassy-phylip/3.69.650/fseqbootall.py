from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Fseqbootall_V0_1_0 = CommandToolBuilder(tool="fseqbootall", base_command=["fseqbootall"], inputs=[ToolInput(tag="in_categories", input_type=Boolean(optional=True), prefix="-categories", doc=InputDocumentation(doc="properties File of input categories")), ToolInput(tag="in_mix_file", input_type=Boolean(optional=True), prefix="-mixfile", doc=InputDocumentation(doc="properties File of mixtures")), ToolInput(tag="in_anc_file", input_type=Boolean(optional=True), prefix="-ancfile", doc=InputDocumentation(doc="properties File of ancestors")), ToolInput(tag="in_weights", input_type=Boolean(optional=True), prefix="-weights", doc=InputDocumentation(doc="properties Weights file")), ToolInput(tag="in_factor_file", input_type=Boolean(optional=True), prefix="-factorfile", doc=InputDocumentation(doc="properties Factors file")), ToolInput(tag="in_datatype", input_type=Boolean(optional=True), prefix="-datatype", doc=InputDocumentation(doc="menu       [s] Choose the datatype (Values: s\n(Molecular sequences); m (Discrete\nMorphology); r (Restriction Sites); g (Gene\nFrequencies))")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="-test", doc=InputDocumentation(doc="menu       [b] Choose test (Values: b (Bootstrap); j\n(Jackknife); c (Permute species for each\ncharacter); o (Permute character order); s\n(Permute within species); r (Rewrite data))")), ToolInput(tag="in_print_data", input_type=Boolean(optional=True), prefix="-printdata", doc=InputDocumentation(doc="boolean    [N] Print out the data at start of run"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fseqbootall_V0_1_0().translate("wdl", allow_empty_container=True)

