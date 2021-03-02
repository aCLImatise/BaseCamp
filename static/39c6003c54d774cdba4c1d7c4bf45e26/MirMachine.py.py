from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Boolean

Mirmachine_Py_V0_1_0 = CommandToolBuilder(tool="MirMachine.py", base_command=["MirMachine.py"], inputs=[ToolInput(tag="in_node", input_type=String(optional=True), prefix="--node", doc=InputDocumentation(doc="Node name. (e.g. Caenorhabditis)")), ToolInput(tag="in_species", input_type=String(optional=True), prefix="--species", doc=InputDocumentation(doc="Species name. (e.g. Caenorhabditis_elegans)")), ToolInput(tag="in_genome", input_type=File(optional=True), prefix="--genome", doc=InputDocumentation(doc="Genome fasta file location (e.g. data/genome/example.fasta)")), ToolInput(tag="in_model", input_type=String(optional=True), prefix="--model", doc=InputDocumentation(doc="Model type: deutero, proto, combined [default: proto]")), ToolInput(tag="in_cpu", input_type=Int(optional=True), prefix="--cpu", doc=InputDocumentation(doc="CPUs. [default: 2]")), ToolInput(tag="in_add_all_nodes", input_type=Boolean(optional=True), prefix="--add-all-nodes", doc=InputDocumentation(doc="Move on the tree both ways.")), ToolInput(tag="in_dry", input_type=Boolean(optional=True), prefix="--dry", doc=InputDocumentation(doc="Dry run.")), ToolInput(tag="in_print_all_nodes", input_type=Boolean(optional=True), prefix="--print-all-nodes", doc=InputDocumentation(doc="Print all available nodes and exit."))], outputs=[], container="quay.io/biocontainers/mirmachine:0.1.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mirmachine_Py_V0_1_0().translate("wdl")

