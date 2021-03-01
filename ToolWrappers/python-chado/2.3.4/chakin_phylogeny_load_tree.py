from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Chakin_Phylogeny_Load_Tree_V0_1_0 = CommandToolBuilder(tool="chakin_phylogeny_load_tree", base_command=["chakin", "phylogeny", "load_tree"], inputs=[ToolInput(tag="in_name", input_type=File(optional=True), prefix="--name", doc=InputDocumentation(doc="The name given to the phylotree entry in the database\n(default=<filename>)")), ToolInput(tag="in_xref_db", input_type=String(optional=True), prefix="--xref_db", doc=InputDocumentation(doc="The name of the db to link dbxrefs for the trees\n(default: 'null')  [default: null]")), ToolInput(tag="in_xref_accession", input_type=String(optional=True), prefix="--xref_accession", doc=InputDocumentation(doc="The accession to use for dbxrefs for the trees\n(assumed same as name unless otherwise specified)")), ToolInput(tag="in_match_on_name", input_type=Boolean(optional=True), prefix="--match_on_name", doc=InputDocumentation(doc="Match polypeptide features using their name instead\nof their uniquename")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Comma-separated list of prefix to be removed from\nidentifiers (e.g species prefixes when loading\nOrthoFinder output)")), ToolInput(tag="in_newick", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_analysis_id", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chakin_Phylogeny_Load_Tree_V0_1_0().translate("wdl")

