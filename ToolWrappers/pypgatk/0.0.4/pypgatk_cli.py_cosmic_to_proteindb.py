from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Pypgatk_Cli_Py_Cosmic_To_Proteindb_V0_1_0 = CommandToolBuilder(tool="pypgatk_cli.py_cosmic_to_proteindb", base_command=["pypgatk_cli.py", "cosmic-to-proteindb"], inputs=[ToolInput(tag="in_config_file", input_type=File(optional=True), prefix="--config_file", doc=InputDocumentation(doc="Configuration file for the cosmic data pipelines")), ToolInput(tag="in_input_mutation", input_type=File(optional=True), prefix="--input_mutation", doc=InputDocumentation(doc="Cosmic Mutation data file")), ToolInput(tag="in_input_genes", input_type=String(optional=True), prefix="--input_genes", doc=InputDocumentation(doc="All Cosmic genes")), ToolInput(tag="in_output_db", input_type=String(optional=True), prefix="--output_db", doc=InputDocumentation(doc="Protein database including all the mutations")), ToolInput(tag="in_tissue_type", input_type=String(optional=True), prefix="--tissue_type", doc=InputDocumentation(doc="Limit mutations to tissue types considered for\ngenerating proteinDBs, by default mutations from\nall tissue types are considered")), ToolInput(tag="in_split_by_tissue_type", input_type=Boolean(optional=True), prefix="--split_by_tissue_type", doc=InputDocumentation(doc="Use this flag to generate a proteinDB per tissue\ntype as specified in the Primary site column,\ndefault is False"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pypgatk_Cli_Py_Cosmic_To_Proteindb_V0_1_0().translate("wdl", allow_empty_container=True)

