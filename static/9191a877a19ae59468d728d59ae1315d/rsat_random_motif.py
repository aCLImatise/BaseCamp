from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Rsat_Random_Motif_V0_1_0 = CommandToolBuilder(tool="rsat_random_motif", base_command=["rsat", "random-motif"], inputs=[ToolInput(tag="in_verbosity_set_verbosity", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="#, --verbosity=#   set verbosity to level #\n0 no verbosity\n1 max verbosity")), ToolInput(tag="in__output_results", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="#, --output=#      output results to #\nif not specified, the standard output is used")), ToolInput(tag="in_length_motif_length", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="#, --length=#      motif length")), ToolInput(tag="in_conserv_motif_conservation", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="#, --conserv=#     motif conservation (0.91 or low)")), ToolInput(tag="in_mutiplier_mutliply_cell", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="#, --mutiplier=#   mutliply each cell by #")), ToolInput(tag="in_motifs_generate_motifs", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="#, --motifs=#      generate # motifs (one by default)")), ToolInput(tag="in_round", input_type=Boolean(optional=True), prefix="--round", doc=InputDocumentation(doc="use integer values")), ToolInput(tag="in_random_motif", input_type=String(), position=0, doc=InputDocumentation(doc="VERSION")), ToolInput(tag="in_author", input_type=Int(), position=1, doc=InputDocumentation(doc="AUTHOR")), ToolInput(tag="in_motifs", input_type=String(), position=0, doc=InputDocumentation(doc="USAGE")), ToolInput(tag="in_random_sites", input_type=String(), position=0, doc=InputDocumentation(doc="implant-sites"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Random_Motif_V0_1_0().translate("wdl", allow_empty_container=True)

