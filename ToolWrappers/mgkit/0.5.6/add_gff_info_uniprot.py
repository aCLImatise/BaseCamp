from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Add_Gff_Info_Uniprot_V0_1_0 = CommandToolBuilder(tool="add_gff_info_uniprot", base_command=["add-gff-info", "uniprot"], inputs=[ToolInput(tag="in_verbose", input_type=String(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Contact email  [required]")), ToolInput(tag="in_buffer", input_type=Int(optional=True), prefix="--buffer", doc=InputDocumentation(doc="Number of annotations to keep in memory  [default:\n50]")), ToolInput(tag="in_force_tax_on_id", input_type=Boolean(optional=True), prefix="--force-taxon-id", doc=InputDocumentation(doc="Overwrite taxon_id if already present")), ToolInput(tag="in_tax_on_id", input_type=Boolean(optional=True), prefix="--taxon-id", doc=InputDocumentation(doc="Add taxonomic ids to annotations, if taxon_id is\nfound, it won't be Overwritten.")), ToolInput(tag="in_lineage", input_type=Boolean(optional=True), prefix="--lineage", doc=InputDocumentation(doc="Add taxonomic lineage to annotations")), ToolInput(tag="in_eggnog", input_type=Boolean(optional=True), prefix="--eggnog", doc=InputDocumentation(doc="Add eggNOG mappings to annotations")), ToolInput(tag="in_enzymes", input_type=Boolean(optional=True), prefix="--enzymes", doc=InputDocumentation(doc="Add EC mappings to annotations")), ToolInput(tag="in_kegg_orthologs", input_type=Boolean(optional=True), prefix="--kegg_orthologs", doc=InputDocumentation(doc="Add KO mappings to annotations")), ToolInput(tag="in_protein_names", input_type=Boolean(optional=True), prefix="--protein-names", doc=InputDocumentation(doc="Add Uniprot description")), ToolInput(tag="in_mapping", input_type=String(optional=True), prefix="--mapping", doc=InputDocumentation(doc="Add any DB mappings to annotations")), ToolInput(tag="in_input_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Add_Gff_Info_Uniprot_V0_1_0().translate("wdl")

