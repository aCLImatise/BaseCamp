from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Pypgatk_Cli_Py_Cbioportal_To_Proteindb_V0_1_0 = CommandToolBuilder(tool="pypgatk_cli.py_cbioportal_to_proteindb", base_command=["pypgatk_cli.py", "cbioportal-to-proteindb"], inputs=[ToolInput(tag="in_config_file", input_type=String(optional=True), prefix="--config_file", doc=InputDocumentation(doc="Configuration for cbioportal to proteindb")), ToolInput(tag="in_input_cds", input_type=String(optional=True), prefix="--input_cds", doc=InputDocumentation(doc="CDS genes from ENSEMBL database")), ToolInput(tag="in_output_db", input_type=String(optional=True), prefix="--output_db", doc=InputDocumentation(doc="Protein database including all the mutations")), ToolInput(tag="in_filter_column", input_type=File(optional=True), prefix="--filter_column", doc=InputDocumentation(doc="Column in the VCF file to be used for\nfiltering or splitting mutations")), ToolInput(tag="in_accepted_values", input_type=String(optional=True), prefix="--accepted_values", doc=InputDocumentation(doc="Limit mutations to values (tissue type,\nsample name, etc) considered for generating\nproteinDBs, by default mutations from all\nrecords are considered")), ToolInput(tag="in_split_by_filter_column", input_type=Boolean(optional=True), prefix="--split_by_filter_column", doc=InputDocumentation(doc="Use this flag to generate a proteinDB per\ngroup as specified in the filter_column,\ndefault is False")), ToolInput(tag="in_clinical_sample_file", input_type=File(optional=True), prefix="--clinical_sample_file", doc=InputDocumentation(doc="File to get tissue type from for the samples\nin input_mutation file")), ToolInput(tag="in_tool", input_type=String(), position=0, doc=InputDocumentation(doc="-in, --input_mutation TEXT      Cbioportal mutation file"))], outputs=[], container="quay.io/biocontainers/pypgatk:0.0.15--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pypgatk_Cli_Py_Cbioportal_To_Proteindb_V0_1_0().translate("wdl")

