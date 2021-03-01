from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Visualize_Pdb_Py_V0_1_0 = CommandToolBuilder(tool="visualize_pdb.py", base_command=["visualize_pdb.py"], inputs=[ToolInput(tag="in_secondary_structure", input_type=String(optional=True), prefix="--secondary-structure", doc=InputDocumentation(doc="Enter a dot-bracket string for the\nsecondary structure of this model")), ToolInput(tag="in_text", input_type=Boolean(optional=True), prefix="--text", doc=InputDocumentation(doc="Add labels to the figure.")), ToolInput(tag="in_long_range", input_type=Boolean(optional=True), prefix="--longrange", doc=InputDocumentation(doc="Display long-range interactions")), ToolInput(tag="in_pseudo_knots", input_type=Boolean(optional=True), prefix="--pseudoknots", doc=InputDocumentation(doc="Allow pseudoknots in the CG structure")), ToolInput(tag="in_virtual_residues", input_type=Boolean(optional=True), prefix="--virtual-residues", doc=InputDocumentation(doc="Display the virtual residues as spheres")), ToolInput(tag="in_color_residues", input_type=Boolean(optional=True), prefix="--color-residues", doc=InputDocumentation(doc="Color the residues according to the element they're in")), ToolInput(tag="in_loops", input_type=Boolean(optional=True), prefix="--loops", doc=InputDocumentation(doc="Don't display the coarse-grain hairpin loops")), ToolInput(tag="in_chain", input_type=String(optional=True), prefix="--chain", doc=InputDocumentation(doc="DWhat chain you like to display.")), ToolInput(tag="in_distance", input_type=String(optional=True), prefix="--distance", doc=InputDocumentation(doc="Draw the lines between specified virtual residues")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Create a picture of the scene and exit")), ToolInput(tag="in_only_elements", input_type=String(optional=True), prefix="--only-elements", doc=InputDocumentation(doc="Display only these elements element names should be\nseparated by commas")), ToolInput(tag="in_virtual_atoms", input_type=Boolean(optional=True), prefix="--virtual-atoms", doc=InputDocumentation(doc="Display the virtual atoms"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Visualize_Pdb_Py_V0_1_0().translate("wdl", allow_empty_container=True)

