from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Target_Db_V0_1_0 = CommandToolBuilder(tool="target_DB", base_command=["target_DB"], inputs=[ToolInput(tag="in_gene", input_type=Boolean(optional=True), prefix="--gene", doc=InputDocumentation(doc="enter a single gene name")), ToolInput(tag="in_in_file", input_type=Boolean(optional=True), prefix="--in_file", doc=InputDocumentation(doc="Name of the input file with a list of genes (.txt - 1\ngene per line)")), ToolInput(tag="in_list_genes", input_type=Boolean(optional=True), prefix="--list_genes", doc=InputDocumentation(doc="Enter a list of gene name separated by a ','")), ToolInput(tag="in_do_all", input_type=Boolean(optional=True), prefix="--do_all", doc=InputDocumentation(doc="Use this option to create a database with all human\ngenes (list coming from HGNC)")), ToolInput(tag="in_sphere_size", input_type=Boolean(optional=True), prefix="--sphere_size", doc=InputDocumentation(doc="enter a value for the probe size of the pocket finder\ntool (default = 3.0)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print information")), ToolInput(tag="in_update", input_type=Boolean(optional=True), prefix="--update", doc=InputDocumentation(doc="Update record if already in database (default: No)")), ToolInput(tag="in_blast_core", input_type=Boolean(optional=True), prefix="-blastcore", doc=InputDocumentation(doc="Enter the value of processor core to use for the blast\nsearch (default=8)")), ToolInput(tag="in_update_config", input_type=Boolean(optional=True), prefix="--update_config", doc=InputDocumentation(doc="use this if you want to update the config file")), ToolInput(tag="in_create_db", input_type=Boolean(optional=True), prefix="--create_db", doc=InputDocumentation(doc="Use this option to create an empty targetDB database\n"))], outputs=[], container="quay.io/biocontainers/targetdb:1.3.1--pyh864c0ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Target_Db_V0_1_0().translate("wdl")

