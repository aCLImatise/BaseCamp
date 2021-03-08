from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Array

Cravat_Util_Converttohg38_V0_1_0 = CommandToolBuilder(tool="cravat_util_converttohg38", base_command=["cravat-util", "converttohg38"], inputs=[ToolInput(tag="in_path_sqlite_database", input_type=Boolean(optional=True), prefix="--db", doc=InputDocumentation(doc="[DB]             path to sqlite3 database file")), ToolInput(tag="in_source_genome", input_type=String(optional=True), prefix="--sourcegenome", doc=InputDocumentation(doc="genome assembly of source database")), ToolInput(tag="in_cols", input_type=Array(t=String(), optional=True), prefix="--cols", doc=InputDocumentation(doc="names of the columns to convert")), ToolInput(tag="in_tables", input_type=Boolean(optional=True), prefix="--tables", doc=InputDocumentation(doc="[TABLES ...]\ntable(s) to convert. If omitted, table name will be\nused as chromosome name.")), ToolInput(tag="in_chrom_col", input_type=String(optional=True), prefix="--chromcol", doc=InputDocumentation(doc="chromosome column. If omitted, all tables will be\ntried to be converted.\n")), ToolInput(tag="in_var_5", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cravat_Util_Converttohg38_V0_1_0().translate("wdl")

