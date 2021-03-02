from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File

Base_Evolve_V0_1_0 = CommandToolBuilder(tool="base_evolve", base_command=["base_evolve"], inputs=[ToolInput(tag="in_n_sites", input_type=Int(optional=True), prefix="--nsites", doc=InputDocumentation(doc="Generate an alignment with <nsites> columns.  Default is 1000.")), ToolInput(tag="in_msa_format", input_type=String(optional=True), prefix="--msa-format", doc=InputDocumentation(doc="|PHYLIP|MPM|SS\nOutput alignment in specified format.  Default is FASTA.")), ToolInput(tag="in_features", input_type=File(optional=True), prefix="--features", doc=InputDocumentation(doc="(for use with a phylo-HMM)  Output an annotations file in GFF\nreflecting the path through the phylo-HMM.")), ToolInput(tag="in_cat_map", input_type=String(optional=True), prefix="--catmap", doc=InputDocumentation(doc="(for use with --features)  Use specified category map to\ndefine feature names.")), ToolInput(tag="in_embed", input_type=Int(optional=True), prefix="--embed", doc=InputDocumentation(doc=",<length>\nEmbed an artificial element of the given length in the alignment,\ndrawing columns from <alt.mod>.  A single element is embedded in\nthe exact middle of the generated alignment.  Useful for testing\nsensitivity of methods for functional element detection.")), ToolInput(tag="in_file_dot_hmm", input_type=File(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tree_one_dot_mod", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_tree_three_dot_mod", input_type=Int(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_features", output_type=File(optional=True), selector=InputSelector(input_to_select="in_features", type_hint=File()), doc=OutputDocumentation(doc="(for use with a phylo-HMM)  Output an annotations file in GFF\nreflecting the path through the phylo-HMM."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Base_Evolve_V0_1_0().translate("wdl", allow_empty_container=True)

