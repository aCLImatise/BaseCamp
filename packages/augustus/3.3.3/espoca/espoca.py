from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Espoca_V0_1_0 = CommandToolBuilder(tool="espoca", base_command=["espoca"], inputs=[ToolInput(tag="in_var_0", input_type=File(optional=True), prefix="--treefile", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_1", input_type=File(optional=True), prefix="--alnfile", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_2", input_type=String(optional=True), prefix="--species", doc=InputDocumentation(doc="")), ToolInput(tag="in_species_parameter_see", input_type=String(), position=0, doc=InputDocumentation(doc="species parameter for calculation of the codon usage. type 'augustus --species=help' to see what species are available")), ToolInput(tag="in_codon_alignment_file", input_type=String(), position=1, doc=InputDocumentation(doc="codon alignment file in multi fasta format")), ToolInput(tag="in_phylogenetic_tree_branchlength", input_type=String(), position=2, doc=InputDocumentation(doc="phylogenetic tree with branchlength in newick format (startree is used if not specified)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Espoca_V0_1_0().translate("wdl", allow_empty_container=True)

