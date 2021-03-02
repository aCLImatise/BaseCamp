from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

Oligotag_V0_1_0 = CommandToolBuilder(tool="oligotag", base_command=["oligotag"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--DEBUG", doc=InputDocumentation(doc="Set logging in debug mode")), ToolInput(tag="in_without_progress_bar", input_type=Boolean(optional=True), prefix="--without-progress-bar", doc=InputDocumentation(doc="desactivate progress bar")), ToolInput(tag="in_oligo_list", input_type=File(optional=True), prefix="--oligo-list", doc=InputDocumentation(doc="filename containing a list of oligonucleotide")), ToolInput(tag="in__oligosizesize_oligonucleotide", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="<###>, --oligo-size=<###>\nSize of oligonucleotide to generate")), ToolInput(tag="in__familysizesize_oligonucleotide", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="<###>, --family-size=<###>\nSize of oligonucleotide family to generate")), ToolInput(tag="in_distanceminimal_distance_two", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="<###>, --distance=<###>\nminimal distance between two oligonucleotides")), ToolInput(tag="in_gcmaxmaximum_count_g", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="<###>, --gc-max=<###>\nmaximum count of G or C nucleotide acceptable in a\nword")), ToolInput(tag="in_accepted", input_type=String(optional=True), prefix="--accepted", doc=InputDocumentation(doc="pattern of accepted oligonucleotide")), ToolInput(tag="in_rejected", input_type=String(optional=True), prefix="--rejected", doc=InputDocumentation(doc="pattern of rejected oligonucleotide")), ToolInput(tag="in__homopolymerreject_oligo", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="<###>, --homopolymer=<###>\nreject oligo with homopolymer longer than.")), ToolInput(tag="in_only_oligo_longer", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc="<###>, --homopolymer-min=<###>\naccept only oligo with homopolymer longer or equal to.")), ToolInput(tag="in_timeout", input_type=Int(optional=True), prefix="--timeout", doc=InputDocumentation(doc="timeout to identify a clique of good size\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Oligotag_V0_1_0().translate("wdl", allow_empty_container=True)

