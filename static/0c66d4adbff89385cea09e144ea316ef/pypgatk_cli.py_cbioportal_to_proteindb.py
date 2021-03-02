from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Pypgatk_Cli_Py_Cbioportal_To_Proteindb_V0_1_0 = CommandToolBuilder(tool="pypgatk_cli.py_cbioportal_to_proteindb", base_command=["pypgatk_cli.py", "cbioportal-to-proteindb"], inputs=[ToolInput(tag="in_config_file", input_type=String(optional=True), prefix="--config_file", doc=InputDocumentation(doc="Configuration for cbioportal to proteindb")), ToolInput(tag="in_input_cds", input_type=String(optional=True), prefix="--input_cds", doc=InputDocumentation(doc="CDS genes from ENSEMBL database")), ToolInput(tag="in_output_db", input_type=String(optional=True), prefix="--output_db", doc=InputDocumentation(doc="Protein database including all the mutations")), ToolInput(tag="in_tissue_type", input_type=String(optional=True), prefix="--tissue_type", doc=InputDocumentation(doc="Limit mutations to tissue types considered\nfor generating proteinDBs, by default\nmutations from all tissue types are\nconsidered")), ToolInput(tag="in_split_by_tissue_type", input_type=Boolean(optional=True), prefix="--split_by_tissue_type", doc=InputDocumentation(doc="Use this flag to generate a proteinDB per\ntissue type as specified in the Primary site\ncolumn, default is False")), ToolInput(tag="in_clinical_sample_file", input_type=File(optional=True), prefix="--clinical_sample_file", doc=InputDocumentation(doc="File to get tissue type from for the samples\nin input_mutation file")), ToolInput(tag="in_tool", input_type=String(), position=0, doc=InputDocumentation(doc="-in, --input_mutation TEXT      Cbioportal mutation file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pypgatk_Cli_Py_Cbioportal_To_Proteindb_V0_1_0().translate("wdl", allow_empty_container=True)

