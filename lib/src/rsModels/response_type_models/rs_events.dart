// ignore_for_file: constant_identifier_names

/// The event types of libretroshare (RsEventType in retroshare/rsevents.h).
///
/// [value] is the number the JSON API expects. The lib numbers its event
/// types from 1 (0 is its internal __NONE), so the Dart [index] is not the
/// lib value and must never be sent.
enum RsEventType {
  /// @see RsBroadcastDiscovery
  BROADCAST_DISCOVERY(1),

  /// @see RsDiscPendingPgpReceivedEvent
  GOSSIP_DISCOVERY(2),

  /// @see AuthSSL
  AUTHSSL_CONNECTION_AUTENTICATION(3),

  /// @see pqissl
  PEER_CONNECTION(4),

  /// @see RsGxsChanges, used also in @see RsGxsBroadcast
  GXS_CHANGES(5),

  /// Emitted when a peer state changes, @see RsPeers
  PEER_STATE_CHANGED(6),

  /// @see RsMailStatusEvent
  MAIL_STATUS(7),

  /// @see RsGxsCircleEvent
  GXS_CIRCLES(8),

  /// @see RsGxsChannelEvent
  GXS_CHANNELS(9),

  /// @see RsGxsForumEvent
  GXS_FORUMS(10),

  /// @see RsGxsPostedEvent
  GXS_POSTED(11),

  /// @see RsGxsIdentityEvent
  GXS_IDENTITY(12),

  /// @see RsFiles
  SHARED_DIRECTORIES(13),

  /// @see RsFiles
  FILE_TRANSFER(14),

  /// @see RsMsgs
  CHAT_MESSAGE(15),

  /// @see rspeers.h
  NETWORK(16),

  /// @see rsfiles.h
  FILE_PERCEPTUAL_SEARCH_RESULT_RECEIVED(17),

  /// Not used by the lib under this name.
  VOID(18),

  /// Not used by the lib under this name.
  VOID_2(19),

  /// Emitted to update library clients about file hashing being completed
  FILE_HASHING_COMPLETED(20);

  const RsEventType(this.value);

  /// The RsEventType value in libretroshare.
  final int value;
}
