from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, File

Rnaaliduplex_V0_1_0 = CommandToolBuilder(tool="RNAaliduplex", base_command=["RNAaliduplex"], inputs=[ToolInput(tag="in_detailed_help", input_type=Boolean(optional=True), prefix="--detailed-help", doc=InputDocumentation(doc="Print help, including all details and hidden\noptions, and exit")), ToolInput(tag="in_sorted", input_type=Boolean(optional=True), prefix="--sorted", doc=InputDocumentation(doc="print output sorted by free energy\n(default=off)")), ToolInput(tag="in_temp", input_type=Int(optional=True), prefix="--temp", doc=InputDocumentation(doc="Rescale energy parameters to a temperature of temp\nC. Default is 37C.")), ToolInput(tag="in_no_tetra", input_type=Boolean(optional=True), prefix="--noTetra", doc=InputDocumentation(doc="Do not include special tabulated stabilizing\nenergies for tri-, tetra- and hexaloop hairpins.\nMostly for testing.\n(default=off)")), ToolInput(tag="in_dangles", input_type=Int(optional=True), prefix="--dangles", doc=InputDocumentation(doc="How to treat 'dangling end' energies for bases\nadjacent to helices in free ends and multi-loops\n(default=`2')")), ToolInput(tag="in_no_lp", input_type=Boolean(optional=True), prefix="--noLP", doc=InputDocumentation(doc="Produce structures without lonely pairs (helices\nof length 1).\n(default=off)")), ToolInput(tag="in_no_gu", input_type=Boolean(optional=True), prefix="--noGU", doc=InputDocumentation(doc="Do not allow GU pairs\n(default=off)")), ToolInput(tag="in_no_closing_gu", input_type=Boolean(optional=True), prefix="--noClosingGU", doc=InputDocumentation(doc="Do not allow GU pairs at the end of helices\n(default=off)")), ToolInput(tag="in_nsp", input_type=String(optional=True), prefix="--nsp", doc=InputDocumentation(doc="Allow other pairs in addition to the usual\nAU,GC,and GU pairs.")), ToolInput(tag="in_param_file", input_type=File(optional=True), prefix="--paramFile", doc=InputDocumentation(doc="Read energy parameters from paramfile, instead of\nusing the default parameter set.")), ToolInput(tag="in_program", input_type=String(), position=0, doc=InputDocumentation(doc="-e, --deltaEnergy=range    Compute suboptimal structures with energy in a\ncertain range of the optimum (kcal/mol). Default\nis calculation of mfe structure only."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnaaliduplex_V0_1_0().translate("wdl", allow_empty_container=True)

