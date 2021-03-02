from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Varfish_Annotator_Init_Db_V0_1_0 = CommandToolBuilder(tool="varfish_annotator_init_db", base_command=["varfish-annotator", "init-db"], inputs=[ToolInput(tag="in_clin_var_path", input_type=Boolean(optional=True), prefix="--clinvar-path", doc=InputDocumentation(doc="Path to Clinvar TSV file(s) to use for import, see documentation for\nmore information")), ToolInput(tag="in_db_release_info", input_type=Boolean(optional=True), prefix="--db-release-info", doc=InputDocumentation(doc="Provide database release information as '$db:$release' for storage in DB")), ToolInput(tag="in_ex_ac_path", input_type=Boolean(optional=True), prefix="--exac-path", doc=InputDocumentation(doc="Path to ExAC VCF file to use for import, see documentation for more\ninformation")), ToolInput(tag="in_g_nomad_exo_mes_path", input_type=Boolean(optional=True), prefix="--gnomad-exomes-path", doc=InputDocumentation(doc="Path to gnomAD exomes VCF file to use for import, see documentation for\nmore information")), ToolInput(tag="in_g_nomad_genomes_path", input_type=Boolean(optional=True), prefix="--gnomad-genomes-path", doc=InputDocumentation(doc="Path to gnomAD genomes VCF file to use for import, see documentation for\nmore information")), ToolInput(tag="in_region", input_type=Boolean(optional=True), prefix="--region", doc=InputDocumentation(doc="Genomic region CHR:START-END (1-based) to import")), ToolInput(tag="in_thousand_genomes_path", input_type=Boolean(optional=True), prefix="--thousand-genomes-path", doc=InputDocumentation(doc="Path to 1000 genomes VCF file to use for import, see documentation for\nmore information\n")), ToolInput(tag="in_in_it_db", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Varfish_Annotator_Init_Db_V0_1_0().translate("wdl", allow_empty_container=True)

