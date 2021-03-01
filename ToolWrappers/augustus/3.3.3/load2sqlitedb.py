from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Load2Sqlitedb_V0_1_0 = CommandToolBuilder(tool="load2sqlitedb", base_command=["load2sqlitedb"], inputs=[ToolInput(tag="in_chunksize", input_type=Boolean(optional=True), prefix="--chunksize", doc=InputDocumentation(doc="this option is only relevant when loading a sequence file\nthe sequences in the input genome are split into chunks of this size so\nthat subsequent retrievals of small sequence ranges do not require to read\nthe complete - potentially much longer - chromosome. (<= 1000000, default 50000)")), ToolInput(tag="in_no_idx", input_type=Boolean(optional=True), prefix="--noIdx", doc=InputDocumentation(doc="use this flag to suppress the building of indices on the database tables.\nIf you are going to load several genomes and/or hint files in a row, this option\nis recommended to speed up the loading. But make sure to build indices with\n--makeIdx after all genomes/hints are loaded. Otherwise, data retrieval operations\ncan be very slow.")), ToolInput(tag="in_make_idx", input_type=Boolean(optional=True), prefix="--makeIdx", doc=InputDocumentation(doc="use this flag to build the indices on the database tables after loading several\ngenomes and/or hint files with --noIdx. Only call this once for all species, e.g.\nload2sqlitedb --makeIdx --dbaccess=database.db")), ToolInput(tag="in_clean", input_type=Boolean(optional=True), prefix="--clean", doc=InputDocumentation(doc="makes a clean load deleting existing hints/genome for the species from the database.\nWhen called with a gff file, only the hints for the species are delete, but not the genome.\nWhen called with a fasta file, both hints and genome for the species are deleted.")), ToolInput(tag="in_dbaccess", input_type=String(optional=True), prefix="--dbaccess", doc=InputDocumentation(doc="")), ToolInput(tag="in_species", input_type=String(optional=True), prefix="--species", doc=InputDocumentation(doc="")), ToolInput(tag="in_parameters", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Load2Sqlitedb_V0_1_0().translate("wdl", allow_empty_container=True)

