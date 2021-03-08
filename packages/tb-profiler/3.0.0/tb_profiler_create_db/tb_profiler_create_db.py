from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Tb_Profiler_Create_Db_V0_1_0 = CommandToolBuilder(tool="tb_profiler_create_db", base_command=["tb-profiler", "create_db"], inputs=[ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="The input CSV file containing the mutations (default:\ntbdb)")), ToolInput(tag="in_csv", input_type=String(optional=True), prefix="--csv", doc=InputDocumentation(doc="The prefix for all output files (default: tbdb.csv)")), ToolInput(tag="in_watchlist", input_type=File(optional=True), prefix="--watchlist", doc=InputDocumentation(doc="A csv file containing genes to profile but without any\nspecific associated mutations (default:\ntbdb.watchlist.csv)")), ToolInput(tag="in_seqname", input_type=String(optional=True), prefix="--seqname", doc=InputDocumentation(doc="The prefix for all output files (default: Chromosome)")), ToolInput(tag="in_confidence", input_type=String(optional=True), prefix="--confidence", doc=InputDocumentation(doc="A CSV containing gene, mutation, drug and confidence\ncolumns (default: tbdb.confidence.csv)")), ToolInput(tag="in_custom", input_type=Boolean(optional=True), prefix="--custom", doc=InputDocumentation(doc="Tells the script this is a custom database, this is\nused to alter the generation of the version file\n(default: False)")), ToolInput(tag="in_db_name", input_type=File(optional=True), prefix="--db-name", doc=InputDocumentation(doc="Overrides the name of the database in the version file\n(default: None)")), ToolInput(tag="in_db_commit", input_type=File(optional=True), prefix="--db-commit", doc=InputDocumentation(doc="Overrides the commit string of the database in the\nversion file (default: None)")), ToolInput(tag="in_db_author", input_type=File(optional=True), prefix="--db-author", doc=InputDocumentation(doc="Overrides the author of the database in the version\nfile (default: None)")), ToolInput(tag="in_db_date", input_type=File(optional=True), prefix="--db-date", doc=InputDocumentation(doc="Overrides the date of the database in the version file\n(default: None)\n"))], outputs=[], container="quay.io/biocontainers/tb-profiler:3.0.0--pypyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tb_Profiler_Create_Db_V0_1_0().translate("wdl")

