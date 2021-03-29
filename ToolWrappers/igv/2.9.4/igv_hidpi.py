from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Igv_Hidpi_V0_1_0 = CommandToolBuilder(tool="igv_hidpi", base_command=["igv_hidpi"], inputs=[ToolInput(tag="in_preferences", input_type=Boolean(optional=True), prefix="--preferences", doc=InputDocumentation(doc="Path or URL to a preference property file")), ToolInput(tag="in_batch_dot", input_type=Boolean(optional=True), prefix="--batch.", doc=InputDocumentation(doc="Path or url to a batch command file")), ToolInput(tag="in_port", input_type=Boolean(optional=True), prefix="--port", doc=InputDocumentation(doc="IGV command port number (defaults to 60151)")), ToolInput(tag="in_genome", input_type=Boolean(optional=True), prefix="--genome", doc=InputDocumentation(doc="Genome ID (e.g hg19) or path or url to .genome or indexed fasta file")), ToolInput(tag="in_data_server_url", input_type=Boolean(optional=True), prefix="--dataServerURL", doc=InputDocumentation(doc="Path or url to a data server registry file")), ToolInput(tag="in_genome_server_url", input_type=Boolean(optional=True), prefix="--genomeServerURL", doc=InputDocumentation(doc="Path or url to a genome server registry file")), ToolInput(tag="in_index_file", input_type=Boolean(optional=True), prefix="--indexFile", doc=InputDocumentation(doc="Index file or comma delimited list of index files corresponding to data files")), ToolInput(tag="in_coverage_file", input_type=Boolean(optional=True), prefix="--coverageFile", doc=InputDocumentation(doc="Coverage file or comma delimited list of coverage files corresponding to data files")), ToolInput(tag="in_name", input_type=Boolean(optional=True), prefix="--name", doc=InputDocumentation(doc="Name or comma-delimited list of names for tracks corresponding to data files")), ToolInput(tag="in_locus", input_type=Boolean(optional=True), prefix="--locus", doc=InputDocumentation(doc="Initial locus")), ToolInput(tag="in_header", input_type=String(optional=True), prefix="--header", doc=InputDocumentation(doc="header to include with all requests for list of data files")), ToolInput(tag="in_igv_directory", input_type=File(optional=True), prefix="--igvDirectory", doc=InputDocumentation(doc="to the local igv directory.  Defaults to <user home>/igv"))], outputs=[], container="quay.io/biocontainers/igv:2.9.4--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Igv_Hidpi_V0_1_0().translate("wdl")

