from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Add_Gff_Info_Unipfile_V0_1_0 = CommandToolBuilder(tool="add_gff_info_unipfile", base_command=["add-gff-info", "unipfile"], inputs=[ToolInput(tag="in_mapping_file", input_type=File(optional=True), prefix="--mapping-file", doc=InputDocumentation(doc="Uniprot mapping file  [required]")), ToolInput(tag="in_force_tax_on_id", input_type=Boolean(optional=True), prefix="--force-taxon-id", doc=InputDocumentation(doc="Overwrite taxon_id if already present")), ToolInput(tag="in_mapping", input_type=Boolean(optional=True), prefix="--mapping", doc=InputDocumentation(doc="[NCBI_TaxID|eggNOG|KO|KEGG|BioCyc|UniPathway|EMBL|EMBL-CDS|GI|STRING]\nMappings to add  [required]")), ToolInput(tag="in_progress", input_type=Boolean(optional=True), prefix="--progress", doc=InputDocumentation(doc="Shows Progress Bar")), ToolInput(tag="in_input_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Add_Gff_Info_Unipfile_V0_1_0().translate("wdl")

