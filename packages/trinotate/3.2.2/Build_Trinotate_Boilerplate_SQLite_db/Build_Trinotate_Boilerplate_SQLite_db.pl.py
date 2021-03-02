from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Build_Trinotate_Boilerplate_Sqlite_Db_Pl_V0_1_0 = CommandToolBuilder(tool="Build_Trinotate_Boilerplate_SQLite_db.pl", base_command=["Build_Trinotate_Boilerplate_SQLite_db.pl"], inputs=[ToolInput(tag="in_uniprot_sprot_dot_dat_do_tgz", input_type=String(), position=0, doc=InputDocumentation(doc="0% |                               |    17k  9:28:30 ETAuniprot_sprot.dat.gz   0% |                               |    77k  4:11:00 ETAuniprot_sprot.dat.gz   0% |                               |   157k  3:04:37 ETAuniprot_sprot.dat.gz   0% |                               |   301k  2:08:22 ETAuniprot_sprot.dat.gz   0% |                               |   468k  1:43:10 ETAuniprot_sprot.dat.gz   0% |                               |   649k  1:29:15 ETAuniprot_sprot.dat.gz   0% |                               |   872k  1:17:28 ETA"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Build_Trinotate_Boilerplate_Sqlite_Db_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

