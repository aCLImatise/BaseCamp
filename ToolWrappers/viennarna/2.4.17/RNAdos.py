from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int, File

Rnados_V0_1_0 = CommandToolBuilder(tool="RNAdos", base_command=["RNAdos"], inputs=[ToolInput(tag="in_detailed_help", input_type=Boolean(optional=True), prefix="--detailed-help", doc=InputDocumentation(doc="Print help, including all details and hidden\noptions, and exit")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Be verbose.\n(default=off)")), ToolInput(tag="in_sequence", input_type=String(optional=True), prefix="--sequence", doc=InputDocumentation(doc="The RNA sequence (ACGU)")), ToolInput(tag="in_max_energy", input_type=Int(optional=True), prefix="--max-energy", doc=InputDocumentation(doc="Structures are only counted until this threshold\nis reached. Default is 0 kcal/mol.\n(default=`0')")), ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="--numThreads", doc=InputDocumentation(doc="Set the number of threads used for calculations\n(only available when compiled with OpenMP\nsupport)")), ToolInput(tag="in_temp", input_type=Int(optional=True), prefix="--temp", doc=InputDocumentation(doc="Rescale energy parameters to a temperature of temp\nC. Default is 37C.")), ToolInput(tag="in_dangles", input_type=Int(optional=True), prefix="--dangles", doc=InputDocumentation(doc="How to treat 'dangling end' energies for bases\nadjacent to helices in free ends and multi-loops\n(default=`2')")), ToolInput(tag="in_param_file", input_type=File(optional=True), prefix="--paramFile", doc=InputDocumentation(doc="Read energy parameters from paramfile, instead of\nusing the default parameter set.")), ToolInput(tag="in_hashtable_bits", input_type=Int(optional=True), prefix="--hashtable-bits", doc=InputDocumentation(doc="Set the size of the hash table for each cell in\nthe dp-matrices.\n(default=`20')"))], outputs=[], container="quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnados_V0_1_0().translate("wdl")

