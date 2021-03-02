from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Float

Mdinspect_V0_1_0 = CommandToolBuilder(tool="mdinspect", base_command=["mdinspect"], inputs=[ToolInput(tag="in_topology", input_type=String(optional=True), prefix="--topology", doc=InputDocumentation(doc="Topology for the system (.prmtop/.pdb)")), ToolInput(tag="in_bond_low", input_type=Float(optional=True), prefix="--bond-low", doc=InputDocumentation(doc="Minimum fraction of sum of covalent radii for bonded\natoms. Default=0.4")), ToolInput(tag="in_bond_high", input_type=Float(optional=True), prefix="--bond-high", doc=InputDocumentation(doc="Maximum fraction of sum of covalent radii for bonded\natoms. Default=1.2")), ToolInput(tag="in_rmsd_tolerance", input_type=Float(optional=True), prefix="--rmsd-tolerance", doc=InputDocumentation(doc="Maximum tolerance for percent change in RMSD.\nDefault=100.0\n")), ToolInput(tag="in_files", input_type=String(), position=0, doc=InputDocumentation(doc="Input trajectory file(s), in any supported format."))], outputs=[], container="quay.io/biocontainers/mdtraj:1.9.4", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mdinspect_V0_1_0().translate("wdl")

