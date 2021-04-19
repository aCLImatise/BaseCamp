from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Parsec_Genomes_Install_Genome_V0_1_0 = CommandToolBuilder(tool="parsec_genomes_install_genome", base_command=["parsec", "genomes", "install_genome"], inputs=[ToolInput(tag="in_func", input_type=String(optional=True), prefix="--func", doc=InputDocumentation(doc="Allowed values: 'download', Download and index;\n'index', Index only  [default: download]")), ToolInput(tag="in_source", input_type=String(optional=True), prefix="--source", doc=InputDocumentation(doc="Data source for this build. Can be: UCSC, Ensembl,\nNCBI, URL")), ToolInput(tag="in_db_key", input_type=String(optional=True), prefix="--dbkey", doc=InputDocumentation(doc="DB key of the build to download, ignored unless 'UCSC'\nis specified as the source")), ToolInput(tag="in_ncbi_name", input_type=String(optional=True), prefix="--ncbi_name", doc=InputDocumentation(doc="NCBI's genome identifier, ignored unless NCBI is\nspecified as the source")), ToolInput(tag="in_ensembl_db_key", input_type=String(optional=True), prefix="--ensembl_dbkey", doc=InputDocumentation(doc="Ensembl's genome identifier, ignored unless Ensembl is\nspecified as the source")), ToolInput(tag="in_url_db_key", input_type=String(optional=True), prefix="--url_dbkey", doc=InputDocumentation(doc="DB key to use for this build, ignored unless URL is\nspecified as the source")), ToolInput(tag="in_indexers", input_type=String(optional=True), prefix="--indexers", doc=InputDocumentation(doc="POST array of indexers to run after downloading\n(indexers[] = first, indexers[] = second, ...)"))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Genomes_Install_Genome_V0_1_0().translate("wdl")

