from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, File, Array, Boolean

Phyluce_Probe_Run_Multiple_Lastzs_Sqlite_V0_1_0 = CommandToolBuilder(tool="phyluce_probe_run_multiple_lastzs_sqlite", base_command=["phyluce_probe_run_multiple_lastzs_sqlite"], inputs=[ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="The database in which to store results (also use")), ToolInput(tag="in_append", input_type=String(optional=True), prefix="--append", doc=InputDocumentation(doc="adding results to an existing database)")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The directory in which to store the LASTZ files")), ToolInput(tag="in_probe_file", input_type=File(optional=True), prefix="--probefile", doc=InputDocumentation(doc="The probe file to align against the sequences")), ToolInput(tag="in_chromo_list", input_type=Array(t=String(), optional=True), prefix="--chromolist", doc=InputDocumentation(doc="The list of organisms with genome sequences in\nchromosomes")), ToolInput(tag="in_scaffold_list", input_type=Array(t=String(), optional=True), prefix="--scaffoldlist", doc=InputDocumentation(doc="The list of organisms with genome sequences in\nscaffolds/contigs")), ToolInput(tag="in_no_dir", input_type=Boolean(optional=True), prefix="--no-dir", doc=InputDocumentation(doc="If genome sequences are not in their own abbr.")), ToolInput(tag="in_genome_base_path", input_type=File(optional=True), prefix="--genome-base-path", doc=InputDocumentation(doc="The base path to a directory containing genomes\nsequences")), ToolInput(tag="in_coverage", input_type=String(optional=True), prefix="--coverage", doc=InputDocumentation(doc="The default coverage to search for using lastz")), ToolInput(tag="in_identity", input_type=String(optional=True), prefix="--identity", doc=InputDocumentation(doc="The default percent identity to search for using lastz")), ToolInput(tag="in_directory", input_type=Directory(), position=0, doc=InputDocumentation(doc="--cores CORES         The number of compute cores to use"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Probe_Run_Multiple_Lastzs_Sqlite_V0_1_0().translate("wdl", allow_empty_container=True)

