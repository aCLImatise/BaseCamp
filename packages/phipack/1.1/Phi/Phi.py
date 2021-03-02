from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Phi_V0_1_0 = CommandToolBuilder(tool="Phi", base_command=["Phi"], inputs=[ToolInput(tag="in_filename_fasta_format", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": Filename = FASTA format")), ToolInput(tag="in_filename_strict_phylip", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc=": Filename = Strict phylip file")), ToolInput(tag="in_filename_relaxed_phylip", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc=": Filename = Relaxed phylip file")), ToolInput(tag="in_alignmenttype_dao_where", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc=": AlignmentType = D|A|O where D=DNA\nA=AA and O=OTHER [default DNA]")), ToolInput(tag="in_p", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc=": [#] = PHI permutation test [default = FALSE, #=1000]")), ToolInput(tag="in_change_default_window", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc=": # = Change default window size [default w = 100]")), ToolInput(tag="in_report_other_statistics", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc=": Report other statistics (NSS and Max Chi^2) [default = FALSE]")), ToolInput(tag="in__verbose", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": Verbose [default = FALSE]")), ToolInput(tag="in_print_color_scaled", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc=": [i] = Print color (scaled) incompatibility matrix (graph.ppm)\ni - Image only (no ticks...) [default = FALSE]\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phi_V0_1_0().translate("wdl", allow_empty_container=True)

