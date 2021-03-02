from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Array, File, Directory

Motifscan_Genome_V0_1_0 = CommandToolBuilder(tool="motifscan_genome", base_command=["motifscan", "genome"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Enable verbose log messages.")), ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc="Display installed genome assemblies.")), ToolInput(tag="in_list_remote", input_type=Boolean(optional=True), prefix="--list-remote", doc=InputDocumentation(doc="Display available remote genome assemblies.")), ToolInput(tag="in_search", input_type=String(optional=True), prefix="--search", doc=InputDocumentation(doc="Search for genome assemblies in a remote database.")), ToolInput(tag="in_install", input_type=Boolean(optional=True), prefix="--install", doc=InputDocumentation(doc="Install a new genome assembly.")), ToolInput(tag="in_uninstall", input_type=String(optional=True), prefix="--uninstall", doc=InputDocumentation(doc="Uninstall a genome assembly.")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Name of the genome assembly to be installed.")), ToolInput(tag="in_local_genome_sequences", input_type=Array(t=String(), optional=True), prefix="-i", doc=InputDocumentation(doc="Local genome sequences file(s) in FASTA format.")), ToolInput(tag="in_local_gene_annotation", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="Local gene annotation (refGene.txt) file.")), ToolInput(tag="in_remote", input_type=String(optional=True), prefix="--remote", doc=InputDocumentation(doc="Download required data files from a remote assembly.")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Write to a given directory instead of the default\ndirectory.")), ToolInput(tag="in_database", input_type=String(optional=True), prefix="--database", doc=InputDocumentation(doc="Which remote database is used to list/install/search\ngenome assemblies. Default: ucsc")), ToolInput(tag="in_clean", input_type=Boolean(optional=True), prefix="--clean", doc=InputDocumentation(doc="Clean the download directory after installation."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Motifscan_Genome_V0_1_0().translate("wdl", allow_empty_container=True)

